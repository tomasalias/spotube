use crate::api::plugin::models::artist::SpotubeFullArtistObject;
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginArtistEndpoint<'a>(&'a mut Context);

impl<'a> PluginArtistEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginArtistEndpoint<'a> {
        PluginArtistEndpoint(context)
    }

    fn artist_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        return plugin_instance
            .get(js_string!("artist"), self.0)
            .or_else(|e| Err(anyhow!("artist not found: \n{}", e)));
    }

    pub async fn get_artist(&mut self, id: String) -> anyhow::Result<SpotubeFullArtistObject> {
        let artist_val = self.artist_obj()?;
        let artist_object = artist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let get_artist_fn = artist_object
            .get(js_string!("getArtist"), self.0)
            .map_err(|e| anyhow!("JS error while accessing getArtist: {}", e))?
            .as_function()
            .ok_or(anyhow!("getArtist is not a function"))?;

        let args = [JsValue::from(js_string!(id))];

        let res_json =
            utils::js_call_to_json(get_artist_fn.call(&artist_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn top_tracks(
        &mut self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let artist_val = self.artist_obj()?;
        let artist_object = artist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let top_tracks_fn = artist_object
            .get(js_string!("topTracks"), self.0)
            .map_err(|e| anyhow!("JS error while accessing getArtist: {}", e))?
            .as_function()
            .ok_or(anyhow!("getArtist is not a function"))?;

        let args: [JsValue; 3] = [
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

        let res_json =
            utils::js_call_to_json(top_tracks_fn.call(&artist_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn albums(
        &mut self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let artist_val = self.artist_obj()?;
        let artist_object = artist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let albums_fn = artist_object
            .get(js_string!("albums"), self.0)
            .map_err(|e| anyhow!("JS error while accessing albums: {}", e))?
            .as_function()
            .ok_or(anyhow!("albums is not a function"))?;

        let args: [JsValue; 3] = [
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

        let res_json =
            utils::js_call_to_json(albums_fn.call(&artist_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn related(
        &mut self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let artist_val = self.artist_obj()?;
        let artist_object = artist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let related_fn = artist_object
            .get(js_string!("related"), self.0)
            .map_err(|e| anyhow!("JS error while accessing related: {}", e))?
            .as_function()
            .ok_or(anyhow!("related is not a function"))?;

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

        let res_json =
            utils::js_call_to_json(related_fn.call(&artist_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn save(&mut self, ids: Vec<String>) -> anyhow::Result<()> {
        let artist_val = self.artist_obj()?;
        let artist_object = artist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let save_fn = artist_object
            .get(js_string!("save"), self.0)
            .map_err(|e| anyhow!("JS error while accessing save: {}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let ids_val = utils::vec_string_to_js_array(ids, self.0)?;
        let args = [ids_val.into()];

        utils::js_call_to_void(save_fn.call(&artist_val, &args, self.0), self.0).await
    }

    pub async fn unsave(&mut self, ids: Vec<String>) -> anyhow::Result<()> {
        let artist_val = self.artist_obj()?;
        let artist_object = artist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let unsave_fn = artist_object
            .get(js_string!("unsave"), self.0)
            .map_err(|e| anyhow!("JS error while accessing save: {}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let ids_val = utils::vec_string_to_js_array(ids, self.0)?;
        let args = [ids_val.into()];

        utils::js_call_to_void(unsave_fn.call(&artist_val, &args, self.0), self.0).await
    }
}
