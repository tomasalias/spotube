use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::user::SpotubeUserObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};

pub struct PluginUserEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginUserEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginUserEndpoint<'a> {
        PluginUserEndpoint(context)
    }

    pub async fn me(&self) -> anyhow::Result<SpotubeUserObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<(), SpotubeUserObject>(
                    ctx.clone(),
                    "user",
                    "me",
                    &[],
                )
                .await?
                .expect("[hey][smartypants] user.me should return a SpotifyUserObject")
            )
        })
        .await
    }

    pub async fn saved_playlists(
        &self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            let res= js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx,
                    "user",
                    "savedPlaylists",
                    &[serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] user.savedPlaylists should return a SpotifyPaginationResponseObject");

            Ok(res)
        }).await
    }

    pub async fn saved_tracks(
        &self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            let res= js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx,
                    "user",
                    "savedTracks",
                    &[serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] user.savedTracks should return a SpotifyPaginationResponseObject");

            Ok(res)
        }).await
    }

    pub async fn saved_albums(
        &self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            let res= js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx,
                    "user",
                    "savedAlbums",
                    &[serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] user.savedAlbums should return a SpotifyPaginationResponseObject");

            Ok(res)
        }).await
    }

    pub async fn saved_artists(
        &self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            let res= js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx,
                    "user",
                    "savedArtists",
                    &[serde_json::to_value(offset)?, serde_json::to_value(limit.unwrap())?]
                )
                .await?
                .expect("[hey][smartypants] user.savedArtists should return a SpotifyPaginationResponseObject");

            Ok(res)
        }).await
    }
}
