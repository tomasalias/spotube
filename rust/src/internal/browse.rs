use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;

#[derive(Debug)]
pub struct PluginBrowseEndpoint<'a>(&'a mut Context);

impl<'a> PluginBrowseEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginBrowseEndpoint<'a> {
        PluginBrowseEndpoint(context)
    }

    fn browse_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("browse"), self.0)
            .or_else(|e| Err(anyhow!("browse not found:\n{}", e)))
    }

    pub async fn sections(
        &mut self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let browse_val = self.browse_obj()?;
        let browse_object = browse_val.as_object().ok_or(anyhow!("Not an object"))?;

        let sections_fn = browse_object
            .get(js_string!("sections"), self.0)
            .map_err(|e| anyhow!("JS error while accessing sections: {}", e))?
            .as_function()
            .ok_or(anyhow!("sections is not a function"))?;

        let args = [
            match offset {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match limit {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res = utils::js_call_to_json(sections_fn.call(&browse_val, &args, self.0), self.0)?;

        serde_json::from_value(res).map_err(|e| anyhow!("{}", e))
    }

    pub async fn section_items(
        &mut self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let browse_val = self.browse_obj()?;
        let browse_object = browse_val.as_object().ok_or(anyhow!("Not an object"))?;

        let section_items_fn = browse_object
            .get(js_string!("sectionItems"), self.0)
            .map_err(|e| anyhow!("JS error while accessing sectionItems: {}", e))?
            .as_function()
            .ok_or(anyhow!("sectionItems is not a function"))?;

        let args = [
            JsValue::from(js_string!(id)),
            match offset {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match limit {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res =
            utils::js_call_to_json(section_items_fn.call(&browse_val, &args, self.0), self.0)?;

        serde_json::from_value(res).map_err(|e| anyhow!("{}", e))
    }
}
