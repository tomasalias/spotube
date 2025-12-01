use crate::api::plugin::models::core::{PluginConfiguration, PluginUpdateAvailable, ScrobbleDetails};
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginCoreEndpoint<'a>(&'a mut Context);

impl<'a> PluginCoreEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginCoreEndpoint<'a> {
        PluginCoreEndpoint(context)
    }

    fn core_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("core"), self.0)
            .or_else(|e| Err(anyhow!("core not found:\n{}", e)))
    }

    pub async fn check_update(
        &mut self,
        plugin_config: PluginConfiguration,
    ) -> anyhow::Result<Option<PluginUpdateAvailable>> {
        let core_val = self.core_obj()?;
        let core_object = core_val.as_object().ok_or(anyhow!("Not an object"))?;

        let check_update_fn = core_object
            .get(js_string!("checkUpdate"), self.0)
            .map_err(|e| anyhow!("JS error while accessing checkUpdate: {}", e))?
            .as_function()
            .ok_or(anyhow!("checkUpdate is not a function"))?;

        let value = serde_json::to_value(plugin_config)?;
        let config_val = utils::json_value_to_js(&value, self.0).map_err(|e| anyhow!("{}", e))?;
        let args = [config_val];

        let res = utils::js_call_to_json(check_update_fn.call(&core_val, &args, self.0), self.0).await?;
        if res.is_null() {
            Ok(None)
        } else {
            serde_json::from_value(res).map_err(|e| anyhow!("{}", e))
        }
    }

    pub fn support(&mut self) -> anyhow::Result<String> {
        let core_val = self.core_obj()?;
        let core_object = core_val.as_object().ok_or(anyhow!("Not an object"))?;

        let support_val = core_object
            .get(js_string!("support"), self.0)
            .map_err(|e| anyhow!("JS error while accessing support: {}", e))?;

        support_val
            .as_string()
            .ok_or(anyhow!("support is not a string"))?
            .to_std_string()
            .map_err(|e| anyhow!("{}", e))
    }

    pub async fn scrobble(&mut self, details: ScrobbleDetails) -> anyhow::Result<()> {
        let core_val = self.core_obj()?;
        let core_object = core_val.as_object().ok_or(anyhow!("Not an object"))?;

        let scrobble_fn = core_object
            .get(js_string!("scrobble"), self.0)
            .map_err(|e| anyhow!("JS error while accessing scrobble: {}", e))?
            .as_function()
            .ok_or(anyhow!("scrobble is not a function"))?;

        let value = serde_json::to_value(details)?;
        let details_val = utils::json_value_to_js(&value, self.0).map_err(|e| anyhow!("{}", e))?;
        let args = [details_val];

        utils::js_call_to_void(scrobble_fn.call(&core_val, &args, self.0), self.0).await
    }
}
