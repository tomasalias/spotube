use crate::api::plugin::models::audio_source::{
    SpotubeAudioSourceMatchObject, SpotubeAudioSourceStreamObject,
};
use crate::api::plugin::models::track::SpotubeTrackObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginAudioSourceEndpoint<'a>(&'a mut Context);

impl<'a> PluginAudioSourceEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginAudioSourceEndpoint<'a> {
        PluginAudioSourceEndpoint(context)
    }

    fn audio_source_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("audioSource"), self.0)
            .or_else(|e| Err(anyhow!("artist not found: \n{}", e)))
    }

    pub async fn matches(
        &mut self,
        track: SpotubeTrackObject,
    ) -> anyhow::Result<Vec<SpotubeAudioSourceMatchObject>> {
        let audio_source_val = self.audio_source_obj()?;
        let audio_source_object = audio_source_val
            .as_object()
            .ok_or(anyhow!("Not an object"))?;

        let matches_fn = audio_source_object
            .get(js_string!("matches"), self.0)
            .map_err(|e| anyhow!("JS error while accessing matches: {}", e))?
            .as_function()
            .ok_or(anyhow!("matches is not a function"))?;

        let value = serde_json::to_value(track)?;
        let track_val = utils::json_value_to_js(&value, self.0).map_err(|e| anyhow!("{}", e))?;
        let args = [track_val];

        let res =
            utils::js_call_to_json(matches_fn.call(&audio_source_val, &args, self.0), self.0)?;

        serde_json::from_value(res).map_err(|e| anyhow!("{}", e))
    }

    pub async fn streams(
        &mut self,
        matched: SpotubeAudioSourceMatchObject,
    ) -> anyhow::Result<Vec<SpotubeAudioSourceStreamObject>> {
        let audio_source_val = self.audio_source_obj()?;
        let audio_source_object = audio_source_val
            .as_object()
            .ok_or(anyhow!("Not an object"))?;

        let matches_fn = audio_source_object
            .get(js_string!("streams"), self.0)
            .map_err(|e| anyhow!("JS error while accessing matches: {}", e))?
            .as_function()
            .ok_or(anyhow!("matches is not a function"))?;

        let value = serde_json::to_value(matched)?;
        let matched_val = utils::json_value_to_js(&value, self.0).map_err(|e| anyhow!("{}", e))?;
        let args = [matched_val];

        let res =
            utils::js_call_to_json(matches_fn.call(&audio_source_val, &args, self.0), self.0)?;

        serde_json::from_value(res).map_err(|e| anyhow!("{}", e))
    }
}
