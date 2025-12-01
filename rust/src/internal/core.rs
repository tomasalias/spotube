use crate::api::plugin::models::core::{
    PluginConfiguration, PluginUpdateAvailable, ScrobbleDetails,
};
use crate::internal::utils::{js_invoke_async_method_to_json, js_invoke_method_to_json};
use anyhow::anyhow;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};

pub struct PluginCoreEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginCoreEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginCoreEndpoint<'a> {
        PluginCoreEndpoint(context)
    }

    pub async fn check_update(
        &self,
        plugin_config: PluginConfiguration,
    ) -> anyhow::Result<Option<PluginUpdateAvailable>> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json(ctx.clone(), "core", "checkUpdate", &[plugin_config]).await
        }).await
    }

    pub async fn support(&self) -> anyhow::Result<String> {
        self.0
            .with(|ctx| {
                anyhow::Ok(
                    js_invoke_method_to_json::<String, String>(
                        ctx.clone(),
                        "core",
                        "support",
                        &[],
                    )?
                    .expect("[hey][smartypants] core.support should return a string"),
                )
            })
            .await
    }

    pub async fn scrobble(&self, details: ScrobbleDetails) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(ctx.clone(), "core", "scrobble", &[details]).await?;
            anyhow::Ok(())
        })
        .await
    }
}
