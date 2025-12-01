use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginAuthEndpoint<'a>(&'a mut Context);

impl<'a> PluginAuthEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginAuthEndpoint<'a> {
        PluginAuthEndpoint(context)
    }

    fn auth_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        return plugin_instance
            .get(js_string!("auth"), self.0)
            .or_else(|e| Err(anyhow!("auth not found:\n{}", e)));
    }

    pub async fn authenticate(&mut self) -> anyhow::Result<()> {
        let auth_val = self.auth_obj()?;
        let auth_object = auth_val.as_object().ok_or(anyhow!("Not an object"))?;

        let authenticate_fn = auth_object
            .get(js_string!("authenticate"), self.0)
            .map_err(|e| anyhow!("JS error while accessing authenticate: {}", e))?
            .as_function()
            .ok_or(anyhow!("authenticate is not a function"))?;

        let args = [];

        utils::js_call_to_void(authenticate_fn.call(&auth_val, &args, self.0), self.0).await
    }

    pub fn is_authenticated(&mut self) -> anyhow::Result<bool> {
        let auth_val = self.auth_obj()?;
        let auth_object = auth_val.as_object().ok_or(anyhow!("Not an object"))?;

        let authenticate_fn = auth_object
            .get(js_string!("is_authenticated"), self.0)
            .map_err(|e| anyhow!("JS error while accessing authenticate: {}", e))?
            .as_function()
            .ok_or(anyhow!("authenticate is not a function"))?;

        authenticate_fn
            .call(&auth_val, &[], self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_boolean()
            .ok_or(anyhow!("Not a boolean"))
    }

    pub async fn logout(&mut self) -> anyhow::Result<()> {
        let auth_val = self.auth_obj()?;
        let auth_object = auth_val.as_object().ok_or(anyhow!("Not an object"))?;

        let logout_fn = auth_object
            .get(js_string!("logout"), self.0)
            .map_err(|e| anyhow!("JS error while accessing authenticate: {}", e))?
            .as_function()
            .ok_or(anyhow!("authenticate is not a function"))?;

        let args = [];

        utils::js_call_to_void(logout_fn.call(&auth_val, &args, self.0), self.0).await
    }
}
