use eventsource_client::{ClientBuilder, Client, SSE};
use flutter_rust_bridge::for_generated::futures::StreamExt;
use rquickjs::function::Func;
use rquickjs::{CatchResultExt, Ctx, Error as JsError, Function, Object, Value};
use tokio::sync::mpsc;

fn connect_sse<'js>(ctx: Ctx<'js>, config: Object<'js>) -> rquickjs::Result<Object<'js>> {
    let url: String = config.get("url")?;
    let on_connecting: Function = config.get("onConnecting")?;
    let on_open: Function = config.get("onOpen")?;
    let on_message: Function = config.get("onMessage")?;
    let on_error: Function = config.get("onError")?;

    let (close_tx, mut close_rx) = mpsc::unbounded_channel::<()>();

    if let Err(e) = on_connecting.call::<_, ()>(()).catch(&ctx) {
        eprintln!("Error in onConnecting callback: {}", e);
    }

    // Spawn the SSE background task using Ctx::spawn
    let _ = ctx.clone().spawn(async move {
        let client = ClientBuilder::for_url(&url);
        if let Err(err) = client {
            eprintln!("Error in ClientBuilder::for_url: {}", err);
            return;
        }

        let client = client.unwrap().build();

        // Notify "open"
        if let Err(e) = on_open.call::<(), ()>(()) {
            eprintln!("Error in onOpen callback: {}", e);
        }

        // Now listen to SSE events OR close signal
        let mut stream = Box::pin(client.stream());

        loop {
            tokio::select! {
                // Check for close signal first
                _ = close_rx.recv() => {
                    // Close requested — drop stream and exit
                    drop(stream);
                    break;
                }

                event = stream.next() => {
                    match event {
                        Some(Ok(SSE::Event(msg))) => {
                            let data = msg.data.clone();
                            if let Err(e) = on_message.call::<_, ()>((data,)) {
                                eprintln!("Error in onMessage callback: {}", e);
                            }
                        }

                        Some(Ok(SSE::Connected(details))) => {
                            println!("SSE Connected: {:?}", details);
                        }

                        Some(Ok(SSE::Comment(comment))) => {
                            println!("SSE Comment: {}", comment);
                        }

                        Some(Err(err)) => {
                            if let Err(e) = on_error.call::<_, ()>((err.to_string(),)) {
                                eprintln!("Error in onError callback: {}", e);
                            }
                            break;
                        }

                        None => {
                            println!("SSE Stream ended gracefully");
                            break;
                        }
                    }
                }
            }
        }
    });
    // Create the close function that sends signal via channel
    let close_fn = Function::new(ctx.clone(), move |_ctx: Ctx<'_>| {
        // Send close signal — ignore errors if receiver is gone
        let _ = close_tx.send(());
        Ok::<(), JsError>(())
    })?;

    // Return { close: () => void }
    let result = Object::new(ctx)?;
    result.set("close", close_fn)?;
    Ok(result)
}

pub fn init(ctx: &Ctx) -> rquickjs::Result<()> {
    let globals = ctx.globals();

    globals.set("__connectSSE", Func::new(connect_sse))?;

    ctx.eval::<Value, _>(
        r#"
    globalThis.EventSource = class EventSource {
        #listeners = {};

        constructor(url, options) {
            this.url = url;
            this.options = options;

            this.close = __connectSSE({
                url: this.url,
                onConnecting: this.#onConnecting.bind(this),
                onOpen: this.#onOpen.bind(this),
                onMessage: this.#onMessage.bind(this),
                onError: this.#onError.bind(this),
            }).close;
        }

        #onMessage(data) {
            console.log("Received message:", data);
            if (this.onmessage) {
                this.onmessage(data);
            }

            const eventLines = data.split('\n');

            if(eventLines.length === 0) return;
            const eventNameChunks = eventLines[0].split("event:");

            if(eventNameChunks.length === 0) return;
            const eventName = eventNameChunks[1].trim();

            if (!this.#listeners[eventName]) return;
            const eventDataChunks = eventLines[1].split("data:");

            if(eventDataChunks.length === 0) return;
            const eventData = eventDataChunks[1].trim();

            if (!eventData) return;
            this.#listeners[eventName](eventData);
        }

        #onConnecting() {
            this.readyState = 0;
        }

        #onOpen() {
            this.readyState = 1;
            if (this.onopen) {
                this.onopen();
            }
        }

        #onError(error) {
            this.readyState = 2;
            if (this.onerror) {
                this.onerror(error);
            }
        }

        addEventListener(event, callback) {
            this.#listeners[event] ??= [];
            this.#listeners[event].push(callback);
        }
    }
    "#,
    )?;

    Ok(())
}
