use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};

pub struct PluginAuthEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginAuthEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginAuthEndpoint<'a> {
        PluginAuthEndpoint(context)
    }

    pub async fn authenticate(&self) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<(), ()>(
                    ctx.clone(),
                    "auth",
                    "authenticate",
                    &[]
                )
                .await?
                .expect("[hey][smartypants] auth.authenticate should return a void")
            )
        })
        .await
    }

    pub async fn is_authenticated(&self) -> anyhow::Result<bool> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<(), bool>(
                    ctx.clone(),
                    "auth",
                    "is_authenticated",
                    &[]
                )
                .await?
                .expect("[hey][smartypants] auth.is_authenticated should return a boolean")
            )
        })
        .await
    }

    pub async fn logout(&self) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<(), ()>(
                    ctx.clone(),
                    "auth",
                    "logout",
                    &[]
                )
                .await?
                .expect("[hey][smartypants] auth.logout should return a void")
            )
        })
        .await
    }
}
