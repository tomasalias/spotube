use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;
use crate::api::plugin::models::user::SpotubeUserObject;

#[derive(Debug)]
pub struct PluginUserEndpoint<'a>(&'a mut Context);

impl<'a> PluginUserEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginUserEndpoint<'a> {
        PluginUserEndpoint(context)
    }

    fn user_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("user"), self.0)
            .or_else(|e| Err(anyhow!("user not found: \n{}", e)))
    }

    pub async fn me(&mut self) -> anyhow::Result<SpotubeUserObject> {
        let user_val = self.user_obj()?;
        let user_object = user_val.as_object().ok_or(anyhow!("Not an object"))?;

        let me_fn = user_object
            .get(js_string!("me"), self.0)
            .map_err(|e| anyhow!("JS error while accessing me: {}", e))?
            .as_function()
            .ok_or(anyhow!("me is not a function"))?;

        let res_json = utils::js_call_to_json(me_fn.call(&user_val, &[], self.0), self.0)?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    async fn get_saved(
        &mut self,
        method: &str,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let user_val = self.user_obj()?;
        let user_object = user_val.as_object().ok_or(anyhow!("Not an object"))?;

        let saved_fn = user_object
            .get(js_string!(method), self.0)
            .map_err(|e| anyhow!("JS error while accessing {}: {}", method, e))?
            .as_function()
            .ok_or(anyhow!("{} is not a function", method))?;

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

        let res_json = utils::js_call_to_json(saved_fn.call(&user_val, &args, self.0), self.0)?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn saved_playlists(
        &mut self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        self.get_saved("savedPlaylists", offset, limit).await
    }

    pub async fn saved_tracks(
        &mut self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        self.get_saved("savedTracks", offset, limit).await
    }

    pub async fn saved_albums(
        &mut self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        self.get_saved("savedAlbums", offset, limit).await
    }

    pub async fn saved_artists(
        &mut self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        self.get_saved("savedArtists", offset, limit).await
    }
}
