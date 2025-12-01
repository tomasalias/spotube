use crate::api::plugin::models::album::SpotubeFullAlbumObject;
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};
use serde_json::Value;

pub struct PluginAlbumEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginAlbumEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginAlbumEndpoint<'a> {
        PluginAlbumEndpoint(context)
    }

    pub async fn get_album(&self, id: String) -> anyhow::Result<SpotubeFullAlbumObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json(ctx.clone(), "album", "getAlbum", &[id]).await
                ?.expect("[hey][smartypants] album.getAlbum should return a SpotifyFullAlbumObject")
            )
        })
        .await
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
                    "album",
                    "tracks",
                    &[Value::String(id), serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] album.tracks should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn releases(
        &self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "album",
                    "releases",
                    &[serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] album.releases should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn save(&self, ids: Vec<String>) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, ()>(
                    ctx.clone(),
                    "album",
                    "save",
                    &[Value::Array(ids.into_iter().map(|id| Value::String(id)).collect())]
                )
                .await?
                .expect("[hey][smartypants] album.save should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn unsave(&self, ids: Vec<String>) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, ()>(
                    ctx.clone(),
                    "album",
                    "unsave",
                    &[Value::Array(ids.into_iter().map(|id| Value::String(id)).collect())]
                )
                .await?
                .expect("[hey][smartypants] album.unsave should return a SpotifyPaginationResponseObject")
            )
        }).await
    }
}
