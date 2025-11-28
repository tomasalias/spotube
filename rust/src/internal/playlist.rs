use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::playlist::SpotubeFullPlaylistObject;
use crate::internal::utils;
use anyhow::anyhow;
use boa_engine::{js_string, Context, JsValue};
use flutter_rust_bridge::frb;

#[derive(Debug)]
pub struct PluginPlaylistEndpoint<'a>(&'a mut Context);

impl<'a> PluginPlaylistEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a mut Context) -> PluginPlaylistEndpoint<'a> {
        PluginPlaylistEndpoint(context)
    }

    fn playlist_obj(&mut self) -> anyhow::Result<JsValue> {
        let global = self.0.global_object();

        let plugin_instance = global
            .get(js_string!("pluginInstance"), self.0)
            .map_err(|e| anyhow!("{}", e))
            .and_then(|a| a.as_object().ok_or(anyhow!("Not an object")))?;

        plugin_instance
            .get(js_string!("playlist"), self.0)
            .or_else(|e| Err(anyhow!("playlist not found: \n{}", e)))
    }

    pub async fn get_playlist(&mut self, id: String) -> anyhow::Result<SpotubeFullPlaylistObject> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let get_playlist_fn = playlist_object
            .get(js_string!("getPlaylist"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("getPlaylist is not a function"))?;

        let args = [JsValue::from(js_string!(id))];

        let res_json =
            utils::js_call_to_json(get_playlist_fn.call(&playlist_val, &args, self.0), self.0)?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn tracks(
        &mut self,

        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let tracks_fn = playlist_object
            .get(js_string!("tracks"), self.0)
            .map_err(|e| anyhow!("{}", e))?
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

        let res_json =
            utils::js_call_to_json(tracks_fn.call(&playlist_val, &args, self.0), self.0)?;

        serde_json::from_value(res_json).map_err(|e| anyhow!("{}", e))
    }

    pub async fn create(
        &mut self,

        user_id: String,
        name: String,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
    ) -> anyhow::Result<Option<SpotubeFullPlaylistObject>> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let create_fn = playlist_object
            .get(js_string!("create"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("create is not a function"))?;

        let args = [
            JsValue::from(js_string!(user_id)),
            JsValue::from(js_string!(name)),
            match description {
                Some(o) => JsValue::from(js_string!(o)),
                None => JsValue::undefined(),
            },
            match public {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match collaborative {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        let res_json =
            utils::js_call_to_json(create_fn.call(&playlist_val, &args, self.0), self.0)?;

        if res_json.is_null() {
            Ok(None)
        } else {
            serde_json::from_value(res_json)
                .map(Some)
                .map_err(|e| anyhow!("{}", e))
        }
    }

    pub async fn update(
        &mut self,

        playlist_id: String,
        name: Option<String>,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
    ) -> anyhow::Result<()> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let update_fn = playlist_object
            .get(js_string!("update"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("update is not a function"))?;

        let args = [
            JsValue::from(js_string!(playlist_id)),
            match name {
                Some(o) => JsValue::from(js_string!(o)),
                None => JsValue::undefined(),
            },
            match description {
                Some(o) => JsValue::from(js_string!(o)),
                None => JsValue::undefined(),
            },
            match public {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
            match collaborative {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        utils::js_call_to_void(update_fn.call(&playlist_val, &args, self.0), self.0)
    }

    pub async fn add_tracks(
        &mut self,

        playlist_id: String,
        track_ids: Vec<String>,
        position: Option<u32>,
    ) -> anyhow::Result<()> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let add_tracks_fn = playlist_object
            .get(js_string!("addTracks"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("addTracks is not a function"))?;

        let args = [
            JsValue::from(js_string!(playlist_id)),
            utils::vec_string_to_js_array(track_ids, self.0)?,
            match position {
                Some(o) => JsValue::from(o),
                None => JsValue::undefined(),
            },
        ];

        utils::js_call_to_void(add_tracks_fn.call(&playlist_val, &args, self.0), self.0)
    }

    pub async fn remove_tracks(
        &mut self,

        playlist_id: String,
        track_ids: Vec<String>,
    ) -> anyhow::Result<()> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let remove_tracks_fn = playlist_object
            .get(js_string!("removeTracks"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("removeTracks is not a function"))?;

        let args = [
            JsValue::from(js_string!(playlist_id)),
            utils::vec_string_to_js_array(track_ids, self.0)?,
        ];

        utils::js_call_to_void(remove_tracks_fn.call(&playlist_val, &args, self.0), self.0)
    }

    pub async fn save(&mut self, playlist_id: String) -> anyhow::Result<()> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let save_fn = playlist_object
            .get(js_string!("save"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("save is not a function"))?;

        let args = [JsValue::from(js_string!(playlist_id))];

        utils::js_call_to_void(save_fn.call(&playlist_val, &args, self.0), self.0)
    }

    pub async fn unsave(&mut self, playlist_id: String) -> anyhow::Result<()> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let unsave_fn = playlist_object
            .get(js_string!("unsave"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("unsave is not a function"))?;

        let args = [JsValue::from(js_string!(playlist_id))];

        utils::js_call_to_void(unsave_fn.call(&playlist_val, &args, self.0), self.0)
    }

    pub async fn delete_playlist(&mut self, playlist_id: String) -> anyhow::Result<()> {
        let playlist_val = self.playlist_obj()?;
        let playlist_object = playlist_val.as_object().ok_or(anyhow!("Not an object"))?;

        let delete_playlist_fn = playlist_object
            .get(js_string!("deletePlaylist"), self.0)
            .map_err(|e| anyhow!("{}", e))?
            .as_function()
            .ok_or(anyhow!("deletePlaylist is not a function"))?;

        let args = [JsValue::from(js_string!(playlist_id))];

        utils::js_call_to_void(
            delete_playlist_fn.call(&playlist_val, &args, self.0),
            self.0,
        )
    }
}
