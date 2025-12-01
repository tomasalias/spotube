use flutter_rust_bridge::frb;
use crate::api::plugin::models::artist::SpotubeFullArtistObject;
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use rquickjs::{async_with, AsyncContext};
use serde_json::Value;

pub struct PluginArtistEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginArtistEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginArtistEndpoint<'a> {
        PluginArtistEndpoint(context)
    }

    pub async fn get_artist(&self, id: String) -> anyhow::Result<SpotubeFullArtistObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json(ctx.clone(), "artist", "getArtist", &[id]).await
                ?.expect("[hey][smartypants] artist.getArtist should return a SpotifyFullArtistObject")
            )
        })
            .await
    }

    pub async fn top_tracks(
        &self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "artist",
                    "topTracks",
                    &[Value::String(id), serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] album.tracks should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn albums(
        &self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "artist",
                    "albums",
                    &[Value::String(id), serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] artist.albums should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn related(
        &self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "artist",
                    "related",
                    &[Value::String(id), serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] artist.related should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn save(&self, ids: Vec<String>) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, ()>(
                    ctx.clone(),
                    "artist",
                    "save",
                    &[Value::Array(ids.into_iter().map(|id| Value::String(id)).collect())]
                )
                .await?
                .expect("[hey][smartypants] artist.save should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn unsave(&self, ids: Vec<String>) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, ()>(
                    ctx.clone(),
                    "artist",
                    "unsave",
                    &[Value::Array(ids.into_iter().map(|id| Value::String(id)).collect())]
                )
                .await?
                .expect("[hey][smartypants] artist.unsave should return a SpotifyPaginationResponseObject")
            )
        }).await
    }
}
