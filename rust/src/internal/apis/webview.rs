use eventsource_client::{Client as EventSourceClient, ClientBuilder};
use flutter_rust_bridge::for_generated::futures::StreamExt;
use rquickjs::{class::Trace, Class, Ctx, Function, JsLifetime};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;

#[derive(Serialize, Deserialize)]
struct WebViewURLRequest {
    url: String,
}

#[derive(Serialize, Deserialize)]
struct WebViewUIDRequest {
    uid: String,
}

#[derive(Serialize, Deserialize)]
struct WebViewCookiesRequest {
    url: String,
    uid: String,
}
#[derive(Serialize, Deserialize)]
struct WebViewResponse {
    uid: String,
}

#[derive(Clone, Trace, JsLifetime)]
#[rquickjs::class]
pub struct WebView<'js> {
    pub url: String,
    pub uid: String,
    #[qjs(skip_trace)]
    endpoint_url: String,
    #[qjs(skip_trace)]
    secret: String,
    #[qjs(skip_trace)]
    callbacks: Vec<Function<'js>>,
}

#[rquickjs::methods]
impl<'js> WebView<'js> {
    #[qjs(constructor)]
    pub fn new(url: String, uid: String, endpoint_url: String, secret: String) -> Self {
        Self {
            url,
            uid,
            endpoint_url,
            secret,
            callbacks: Vec::new(),
        }
    }

    #[qjs(static)]
    pub async fn create(ctx: Ctx<'js>, url: String) -> rquickjs::Result<Class<'js, WebView<'js>>> {
        let endpoint_url: String = ctx.globals().get("__webviewUrl").unwrap_or_default();
        let secret: String = ctx.globals().get("__webviewSecret").unwrap_or_default();

        let client = reqwest::Client::new();
        let endpoint = format!("{}/plugin-api/webview/create", endpoint_url.clone());

        let response = client
            .post(&endpoint)
            .header("Content-Type", "application/json")
            .header("X-Plugin-Secret", &secret)
            .json(&WebViewURLRequest { url: url.clone() })
            .send()
            .await
            .map_err(|e| {
                rquickjs::Error::new_from_js_message("reqwest", "Error", &e.to_string())
            })?;

        let data: WebViewResponse = response.json().await.map_err(|e| {
            rquickjs::Error::new_from_js_message("reqwest", "Error", &e.to_string())
        })?;

        let webview = WebView::new(url, data.uid, endpoint_url, secret);

        Class::instance(ctx, webview)
    }

    pub async fn open(&self) -> rquickjs::Result<()> {
        let client = reqwest::Client::new();
        let endpoint = format!("{}/plugin-api/webview/open", self.endpoint_url);

        client
            .post(&endpoint)
            .header("Content-Type", "application/json")
            .header("X-Plugin-Secret", &self.secret)
            .json(&WebViewUIDRequest {
                uid: self.uid.clone(),
            })
            .send()
            .await
            .map_err(|e| {
                rquickjs::Error::new_from_js_message("reqwest", "Error", &e.to_string())
            })?;

        self.url_change_task().await;

        Ok(())
    }

    pub async fn cookies(&self, ctx: Ctx<'js>) -> rquickjs::Result<rquickjs::Value<'js>> {
        let client = reqwest::Client::new();
        let endpoint = format!("{}/plugin-api/webview/cookies", self.endpoint_url);

        let response = client
            .post(&endpoint)
            .header("Content-Type", "application/json")
            .header("X-Plugin-Secret", &self.secret)
            .json(&WebViewCookiesRequest {
                url: self.url.clone(),
                uid: self.uid.clone(),
            })
            .send()
            .await
            .map_err(|e| {
                rquickjs::Error::new_from_js_message("reqwest", "Error", &e.to_string())
            })?;

        let data: serde_json::Value = response.json().await.map_err(|e| {
            rquickjs::Error::new_from_js_message("reqwest", "Error", &e.to_string())
        })?;

        let value = ctx.json_parse(data.to_string())?;
        Ok(value)
    }

    pub async fn close(&self) -> rquickjs::Result<()> {
        let client = reqwest::Client::new();
        let endpoint = format!("{}/plugin-api/webview/close", self.endpoint_url);

        client
            .post(&endpoint)
            .header("Content-Type", "application/json")
            .header("X-Plugin-Secret", &self.secret)
            .json(&WebViewUIDRequest {
                uid: self.uid.clone(),
            })
            .send()
            .await
            .map_err(|e| {
                rquickjs::Error::new_from_js_message("reqwest", "Error", &e.to_string())
            })?;

        Ok(())
    }

    #[qjs(rename = "onUrlChange")]
    pub fn on_url_change(&mut self, callback: Function<'js>) -> rquickjs::Result<()> {
        self.callbacks.push(callback);
        Ok(())
    }

    async fn url_change_task(&self) {
        let endpoint = format!(
            "{}/plugin-api/webview/{}/on-url-request",
            self.endpoint_url, self.uid
        );

        let secret = self.secret.clone();

        let mut backoff = 1u64;
        const MAX_BACKOFF: u64 = 60;

        loop {
            let client = ClientBuilder::for_url(&endpoint)
                .expect("Failed to create EventSourceClient")
                .header("X-Plugin-Secret", &secret)
                .expect("Failed to set header for EventSourceClient")
                .build();
            let mut stream = client.stream();
            while let Some(event) = stream.next().await {
                match event {
                    Ok(eventsource_client::SSE::Event(msg)) => {
                        if msg.event_type != "url-request" {
                            continue;
                        }
                        backoff = 1;
                        if let Ok(data) = serde_json::from_str::<HashMap<String, String>>(&msg.data)
                        {
                            let url = data.get("url").cloned().unwrap_or_default();
                            for callback in self.callbacks.iter() {
                                if let Err(e) = callback.call::<_, ()>((url.clone(),)) {
                                    eprintln!("Error in onUrlChange callback: {}", e);
                                }
                            }
                        } else {
                            eprintln!("Failed to parse event data: {}", msg.data);
                        }
                    }
                    Ok(_) => {}
                    Err(err) => {
                        eprintln!("Error in EventSource stream: {}", err);
                    }
                }
            }

            eprintln!("EventSource disconnected. Reconnecting in {}s...", backoff);
            tokio::time::sleep(tokio::time::Duration::from_secs(backoff)).await;
            backoff = (backoff * 2).min(MAX_BACKOFF);
        }
    }
}

pub fn init(ctx: &Ctx, endpoint_url: String, secret: String) -> rquickjs::Result<()> {
    // Store config in globals for access in static methods
    ctx.globals().set("__webviewUrl", endpoint_url)?;
    ctx.globals().set("__webviewSecret", secret)?;

    // Register the WebView class
    Class::<WebView>::define(&ctx.globals())?;

    Ok(())
}
