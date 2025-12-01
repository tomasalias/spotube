use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::playlist::SpotubeFullPlaylistObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};
use serde_json::Value;

pub struct PluginPlaylistEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginPlaylistEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginPlaylistEndpoint<'a> {
        PluginPlaylistEndpoint(context)
    }

    pub async fn get_playlist(&self, id: String) -> anyhow::Result<SpotubeFullPlaylistObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json(
                    ctx.clone(),
                    "playlist",
                    "getPlaylist",
                    &[id]
                )
                .await?
                .expect("[hey][smartypants] playlist.getPlaylist should return a SpotifyFullPlaylistObject")
            )
        }).await
    }

    pub async fn tracks(
        &self,

        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "playlist",
                    "tracks",
                    &[Value::String(id), serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] artist.related should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn create(
        &self,
        user_id: String,
        name: String,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
    ) -> anyhow::Result<Option<SpotubeFullPlaylistObject>> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json(
                ctx.clone(),
                "playlist",
                "create",
                &[
                    Value::String(user_id),
                    Value::String(name),
                    Value::String(description.unwrap_or_default()),
                    serde_json::to_value(public.unwrap_or_default())?,
                    serde_json::to_value(collaborative.unwrap_or_default())?,
                    ]
            )
            .await
        })
        .await
    }

    pub async fn update(
        &self,

        playlist_id: String,
        name: Option<String>,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
    ) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(
                ctx.clone(),
                "playlist",
                "update",
                &[
                    Value::String(playlist_id),
                    serde_json::to_value(name)?,
                    Value::String(description.unwrap_or_default()),
                    serde_json::to_value(public.unwrap_or_default())?,
                    serde_json::to_value(collaborative.unwrap_or_default())?,
                    ]
            )
            .await.and_then(|_| Ok(()))
        })
        .await
    }

    pub async fn add_tracks(
        &self,

        playlist_id: String,
        track_ids: Vec<String>,
        position: Option<u32>,
    ) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(
                ctx.clone(),
                "playlist",
                "addTracks",
                &[
                    Value::String(playlist_id),
                    Value::Array(track_ids.into_iter().map(|id| Value::String(id)).collect()),
                    serde_json::to_value(position)?,
                    ]
            )
            .await.and_then(|_| Ok(()))
        })
        .await
    }

    pub async fn remove_tracks(
        &self,

        playlist_id: String,
        track_ids: Vec<String>,
    ) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(
                ctx.clone(),
                "playlist",
                "removeTracks",
                &[
                    Value::String(playlist_id),
                    Value::Array(track_ids.into_iter().map(|id| Value::String(id)).collect()),
                    ]
            )
            .await.and_then(|_| Ok(()))
        })
        .await
    }

    pub async fn save(&self, playlist_id: String) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(
                ctx.clone(),
                "playlist",
                "save",
                &[Value::String(playlist_id)]
            )
            .await.and_then(|_| Ok(()))
        })
        .await
    }

    pub async fn unsave(&self, playlist_id: String) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(
                ctx.clone(),
                "playlist",
                "unsave",
                &[Value::String(playlist_id)]
            )
            .await.and_then(|_| Ok(()))
        })
        .await
    }

    pub async fn delete_playlist(&self, playlist_id: String) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            js_invoke_async_method_to_json::<_, ()>(
                ctx.clone(),
                "playlist",
                "deletePlaylist",
                &[Value::String(playlist_id)]
            )
            .await.and_then(|_| Ok(()))
        })
        .await
    }
}
