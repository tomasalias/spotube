use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::search::SpotubeSearchResponseObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::object::builtins::JsArray;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginSearchEndpoint<'a>(&'a mut Context);

impl<'a> PluginSearchEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginSearchEndpoint<'a> {
        PluginSearchEndpoint(context)
    }

    fn search_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("search"), self.0)
            .or_else(|e| Err(anyhow!("search not found: \n{}", e)))
    }

    pub fn chips(&mut self) -> anyhow::Result<Vec<String>> {
        let search_val = self.search_obj()?;
        let search_object = search_val.as_object().ok_or(anyhow!("Not an object"))?;

        let chips_val = search_object
            .get(js_string!("chips"), self.0)
            .map_err(|e| anyhow!("{}", e))?;
        let chips_obj = chips_val.as_object().ok_or(anyhow!("Not an object"))?;

        if !chips_obj.is_array() {
            return Err(anyhow!("chips is not an array"));
        }

        let chips_array = JsArray::from_object(chips_obj.clone()).map_err(|e| anyhow!("{}", e))?;
        let length = chips_array.length(self.0).map_err(|e| anyhow!("{}", e))?;
        let mut result = Vec::new();
        for i in 0..length {
            let item = chips_array.get(i, self.0).map_err(|e| anyhow!("{}", e))?;
            if let Some(s) = item.as_string() {
                result.push(s.to_std_string().map_err(|e| anyhow!("{}", e))?);
            }
        }
        Ok(result)
    }

    pub async fn all(&mut self, query: String) -> anyhow::Result<SpotubeSearchResponseObject> {
        let search_val = self.search_obj()?;
        let search_object = search_val.as_object().ok_or(anyhow!("Not an object"))?;

        let all_fn = search_object
            .get(js_string!("all"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("all is not a function"))?;

        let args = [JsValue::from(js_string!(query))];

        let res_json = utils::js_call_to_json(all_fn.call(&search_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn albums(
        &mut self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let search_val = self.search_obj()?;
        let search_object = search_val.as_object().ok_or(anyhow!("Not an object"))?;

        let albums_fn = search_object
            .get(js_string!("albums"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("albums is not a function"))?;

        let args: [JsValue; 3] = [
            JsValue::from(js_string!(query)),
            match offset {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match limit {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res_json = utils::js_call_to_json(albums_fn.call(&search_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn artists(
        &mut self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let search_val = self.search_obj()?;
        let search_object = search_val.as_object().ok_or(anyhow!("Not an object"))?;

        let artists_fn = search_object
            .get(js_string!("artists"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("artists is not a function"))?;

        let args: [JsValue; 3] = [
            JsValue::from(js_string!(query)),
            match offset {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match limit {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res_json = utils::js_call_to_json(artists_fn.call(&search_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn playlists(
        &mut self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let search_val = self.search_obj()?;
        let search_object = search_val.as_object().ok_or(anyhow!("Not an object"))?;

        let playlists_fn = search_object
            .get(js_string!("playlists"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("playlists is not a function"))?;

        let args: [JsValue; 3] = [
            JsValue::from(js_string!(query)),
            match offset {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match limit {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res_json =
            utils::js_call_to_json(playlists_fn.call(&search_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn tracks(
        &mut self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let search_val = self.search_obj()?;
        let search_object = search_val.as_object().ok_or(anyhow!("Not an object"))?;

        let tracks_fn = search_object
            .get(js_string!("tracks"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("tracks is not a function"))?;

        let args: [JsValue; 3] = [
            JsValue::from(js_string!(query)),
            match offset {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match limit {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res_json = utils::js_call_to_json(tracks_fn.call(&search_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }
}
