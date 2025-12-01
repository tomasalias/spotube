use crate::api::plugin::models::track::SpotubeTrackObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginTrackEndpoint<'a>(&'a mut Context);

impl<'a> PluginTrackEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginTrackEndpoint<'a> {
        PluginTrackEndpoint(context)
    }

    fn track_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("track"), self.0)
            .or_else(|e| Err(anyhow!("track not found: \n{}", e)))
    }

    pub async fn get_track(&mut self, id: String) -> anyhow::Result<SpotubeTrackObject> {
        let track_val = self.track_obj()?;
        let track_object = track_val.as_object().ok_or(anyhow!("Not an object"))?;

        let get_track_fn = track_object
            .get(js_string!("getTrack"), self.0)
            .map_err(|e| anyhow!("JS error while accessing getTrack: {}", e))?
            .as_function()
            .ok_or(anyhow!("getTrack is not a function"))?;

        let args = [JsValue::from(js_string!(id))];

        let res_json =
            utils::js_call_to_json(get_track_fn.call(&track_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn save(&mut self, ids: Vec<String>) -> anyhow::Result<()> {
        let track_val = self.track_obj()?;
        let track_object = track_val.as_object().ok_or(anyhow!("Not an object"))?;

        let save_fn = track_object
            .get(js_string!("save"), self.0)
            .map_err(|e| anyhow!("JS error while accessing save: {}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let ids_val = utils::vec_string_to_js_array(ids, self.0)?;
        let args = [ids_val.into()];

        utils::js_call_to_void(save_fn.call(&track_val, &args, self.0), self.0).await
    }

    pub async fn unsave(&mut self, ids: Vec<String>) -> anyhow::Result<()> {
        let track_val = self.track_obj()?;
        let track_object = track_val.as_object().ok_or(anyhow!("Not an object"))?;

        let unsave_fn = track_object
            .get(js_string!("unsave"), self.0)
            .map_err(|e| anyhow!("JS error while accessing save: {}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let ids_val = utils::vec_string_to_js_array(ids, self.0)?;
        let args = [ids_val.into()];

        utils::js_call_to_void(unsave_fn.call(&track_val, &args, self.0), self.0).await
    }

    pub async fn radio(&mut self, id: String) -> anyhow::Result<Vec<SpotubeTrackObject>> {
        let track_val = self.track_obj()?;
        let track_object = track_val.as_object().ok_or(anyhow!("Not an object"))?;

        let get_track_fn = track_object
            .get(js_string!("radio"), self.0)
            .map_err(|e| anyhow!("JS error while accessing radio: {}", e))?
            .as_function()
            .ok_or(anyhow!("radio is not a function"))?;

        let args = [JsValue::from(js_string!(id))];

        let res_json =
            utils::js_call_to_json(get_track_fn.call(&track_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }
}
