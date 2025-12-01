use crate::api::plugin::models::album::SpotubeFullAlbumObject;
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginAlbumEndpoint<'a>(&'a mut Context);

impl<'a> PluginAlbumEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginAlbumEndpoint<'a> {
        PluginAlbumEndpoint(context)
    }

    fn album_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("album"), self.0)
            .or_else(|e| Err(anyhow!("album not found: \n{}", e)))
    }

    pub async fn get_album(&mut self, id: String) -> anyhow::Result<SpotubeFullAlbumObject> {
        let album_val = self.album_obj()?;
        let album_object = album_val.as_object().ok_or(anyhow!("Not an object"))?;

        let get_album_fn = album_object
            .get(js_string!("getAlbum"), self.0)
            .map_err(|e| anyhow!("JS error while accessing getAlbum: {}", e))?
            .as_function()
            .ok_or(anyhow!("getAlbum is not a function"))?;

        let args = [JsValue::from(js_string!(id))];

        let res_json =
            utils::js_call_to_json(get_album_fn.call(&album_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn tracks(
        &mut self,

        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let album_val = self.album_obj()?;
        let album_object = album_val.as_object().ok_or(anyhow!("Not an object"))?;

        let tracks_fn = album_object
            .get(js_string!("tracks"), self.0)
            .map_err(|e| anyhow!("JS error while accessing tracks: {}", e))?
            .as_function()
            .ok_or(anyhow!("tracks is not a function"))?;

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

        let res_json = utils::js_call_to_json(tracks_fn.call(&album_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn releases(
        &mut self,

        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let album_val = self.album_obj()?;
        let album_object = album_val.as_object().ok_or(anyhow!("Not an object"))?;

        let releases_fn = album_object
            .get(js_string!("releases"), self.0)
            .map_err(|e| anyhow!("JS error while accessing releases: {}", e))?
            .as_function()
            .ok_or(anyhow!("releases is not a function"))?;

        let args: [JsValue; 2] = [
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
            utils::js_call_to_json(releases_fn.call(&album_val, &args, self.0), self.0).await?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn save(&mut self, ids: Vec<String>) -> anyhow::Result<()> {
        let album_val = self.album_obj()?;
        let album_object = album_val.as_object().ok_or(anyhow!("Not an object"))?;

        let save_fn = album_object
            .get(js_string!("save"), self.0)
            .map_err(|e| anyhow!("JS error while accessing save: {}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let ids_val = utils::vec_string_to_js_array(ids, self.0)?;
        let args = [ids_val.into()];

        utils::js_call_to_void(save_fn.call(&album_val, &args, self.0), self.0).await?;

        Ok(())
    }

    pub async fn unsave(&mut self, ids: Vec<String>) -> anyhow::Result<()> {
        let album_val = self.album_obj()?;
        let album_object = album_val.as_object().ok_or(anyhow!("Not an object"))?;

        let unsave_fn = album_object
            .get(js_string!("unsave"), self.0)
            .map_err(|e| anyhow!("JS error while accessing save: {}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let ids_val = utils::vec_string_to_js_array(ids, self.0)?;
        let args = [ids_val.into()];

        utils::js_call_to_void(unsave_fn.call(&album_val, &args, self.0), self.0).await?;

        Ok(())
    }
}
