use anyhow::anyhow;
use flutter_rust_bridge::for_generated::lazy_static;
use flutter_rust_bridge::{frb, DartFnFuture, DartOpaque};
use llrt_modules::events::EventEmitter;
use rquickjs::function::This;
use rquickjs::{Class, Function, Object};
use std::sync::Mutex;
use tokio::sync::broadcast;

pub type BroadcastSender<T> = broadcast::Sender<T>;
pub type BroadcastReceiver<T> = broadcast::Receiver<T>;

lazy_static! {
    static ref DART_CREATE_WEBVIEW: Mutex<
        Option<
            Box<
                dyn Fn(String, BroadcastSender<String>) -> DartFnFuture<DartOpaque>
                    + Send
                    + 'static,
            >,
        >,
    > = Mutex::new(None);
    static ref DART_OPEN_WEBVIEW: Mutex<Option<Box<dyn Fn(DartOpaque) -> DartFnFuture<()> + Send + 'static>>> =
        Mutex::new(None);
    static ref DART_CLOSE_WEBVIEW: Mutex<Option<Box<dyn Fn(DartOpaque) -> DartFnFuture<()> + Send + 'static>>> =
        Mutex::new(None);
    static ref DART_GET_COOKIES: Mutex<Option<Box<dyn Fn(DartOpaque, String) -> DartFnFuture<String> + Send + 'static>>> =
        Mutex::new(None);
}
pub async fn initialize_webview_callbacks(
    create_webview: impl Fn(String, BroadcastSender<String>) -> DartFnFuture<DartOpaque>
        + Send
        + 'static,
    open_webview: impl Fn(DartOpaque) -> DartFnFuture<()> + Send + 'static,
    close_webview: impl Fn(DartOpaque) -> DartFnFuture<()> + Send + 'static,
    get_cookies: impl Fn(DartOpaque, String) -> DartFnFuture<String> + Send + 'static,
) -> anyhow::Result<()> {
    *DART_CREATE_WEBVIEW
        .lock()
        .map_err(|_| anyhow!("Mutex poisoned"))? = Some(Box::new(create_webview));
    *DART_OPEN_WEBVIEW
        .lock()
        .map_err(|_| anyhow!("Mutex poisoned"))? = Some(Box::new(open_webview));
    *DART_CLOSE_WEBVIEW
        .lock()
        .map_err(|_| anyhow!("Mutex poisoned"))? = Some(Box::new(close_webview));
    *DART_GET_COOKIES
        .lock()
        .map_err(|_| anyhow!("Mutex poisoned"))? = Some(Box::new(get_cookies));

    Ok(())
}

pub async fn send_webview_events(tx: BroadcastSender<String>, event: String) -> anyhow::Result<()> {
    tx.send(event)
        .map_err(|_| anyhow!("Failed to send event"))?;
    Ok(())
}

#[frb(ignore)]
pub struct HostWebview {
    webview: DartOpaque,
    events: BroadcastReceiver<String>,
}

#[frb(ignore)]
impl HostWebview {
    pub async fn create(uri: String) -> anyhow::Result<Self> {
        let (tx, rx) = broadcast::channel(100);

        let s = DART_CREATE_WEBVIEW
            .lock()
            .map_err(|_| anyhow!("Mutex poisoned"))?;
        if let Some(create_webview_fn) = s.as_ref() {
            let s = create_webview_fn(uri, tx.clone()).await;
            Ok(Self {
                webview: s,
                events: rx,
            })
        } else {
            Err(anyhow!("create_webview not implemented"))
        }
    }

    pub async fn open(&self) -> anyhow::Result<()> {
        let s = DART_OPEN_WEBVIEW
            .lock()
            .map_err(|_| anyhow!("Mutex poisoned"))?;
        if let Some(open_webview) = s.as_ref() {
            open_webview(self.webview.clone()).await;
            Ok(())
        } else {
            Err(anyhow!("open_webview not implemented"))
        }
    }

    pub async fn close(&self) -> anyhow::Result<()> {
        let s = DART_CLOSE_WEBVIEW
            .lock()
            .map_err(|_| anyhow!("Mutex poisoned"))?;
        if let Some(close_webview) = s.as_ref() {
            close_webview(self.webview.clone()).await;
            Ok(())
        } else {
            Err(anyhow!("close_webview not implemented"))
        }
    }

    pub async fn get_cookies(&self, url: String) -> anyhow::Result<String> {
        let s = DART_GET_COOKIES
            .lock()
            .map_err(|_| anyhow!("Mutex poisoned"))?;
        if let Some(get_cookies) = s.as_ref() {
            let s = get_cookies(self.webview.clone(), url).await;
            Ok(s)
        } else {
            Err(anyhow!("get_cookies not implemented"))
        }
    }
}

#[frb(ignore)]
#[rquickjs::class]
#[derive(rquickjs::JsLifetime, rquickjs::class::Trace)]
pub struct Webview {
    #[qjs(skip_trace)]
    webview: HostWebview,
}

#[frb(ignore)]
#[rquickjs::methods(rename_all = "camelCase")]
impl Webview {
    #[qjs(static)]
    pub async fn create(uri: String) -> rquickjs::Result<Self> {
        let webview = HostWebview::create(uri)
            .await
            .map_err(|_| rquickjs::Error::Exception)?;

        Ok(Self { webview })
    }

    pub async fn open(&mut self, this: This<Class<'_, Self>>) -> rquickjs::Result<()> {
        let mut events = this.get::<_, Object>("events")?;
        if events.is_null() || events.is_undefined() {
            this.set("events", EventEmitter::new())?;
            events = this.get::<_, Object>("events")?;
        }

        let emit = events.clone().get::<_, Function>("emit")?;
        let mut rx = self.webview.events.resubscribe();

        this.ctx().spawn(async move {
            while let Ok(event) = rx.recv().await {
                if let Err(e) = emit.call::<_, ()>(("url_change", event)) {
                    eprintln!("Failed to emit event: {:?}", e);
                }
            }
        });

        self.webview
            .open()
            .await
            .map_err(|_| rquickjs::Error::Exception)?;
        Ok(())
    }

    pub async fn close(&self) -> rquickjs::Result<()> {
        self.webview
            .close()
            .await
            .map_err(|_| rquickjs::Error::Exception)?;
        Ok(())
    }

    pub async fn get_cookies(&self, url: String) -> rquickjs::Result<String> {
        self.webview
            .get_cookies(url)
            .await
            .map_err(|_| rquickjs::Error::Exception)
    }

    pub async fn poll_url_change_event(&mut self) -> rquickjs::Result<String> {
        let event = self
            .webview
            .events
            .recv()
            .await
            .map_err(|_| rquickjs::Error::Exception)?;
        Ok(event)
    }
}
