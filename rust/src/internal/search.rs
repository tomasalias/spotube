use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::search::SpotubeSearchResponseObject;
use crate::internal::utils::{js_invoke_async_method_to_json, js_invoke_method_to_json};
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};
use serde_json::Value;

pub struct PluginSearchEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginSearchEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginSearchEndpoint<'a> {
        PluginSearchEndpoint(context)
    }


    pub async fn chips(&self) -> anyhow::Result<Vec<String>> {
        self.0
            .with(|ctx| {
                anyhow::Ok(
                    js_invoke_method_to_json::<(), Vec<String>>(
                        ctx.clone(),
                        "search",
                        "chips",
                        &[],
                    )?
                        .expect("[hey][smartypants] search.chips should return a string"),
                )
            })
            .await
    }

    pub async fn all(&self, query: String) -> anyhow::Result<SpotubeSearchResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubeSearchResponseObject>(
                    ctx.clone(),
                    "search",
                    "all",
                    &[query],
                )
                .await?
                .expect("[hey][smartypants] search.all should return a SpotifySearchResponseObject")
            )
        })
            .await
    }

    pub async fn albums(
        &self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "search",
                    "albums",
                    &[
                        Value::String(query),
                        serde_json::to_value(offset)?,
                        serde_json::to_value(limit)?
                    ],
                )
                .await?
                .expect("[hey][smartypants] search.albums should return a SpotifyPaginationResponseObject")
            )
        })
            .await
    }


    pub async fn artists(
        &self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "search",
                    "artists",
                    &[
                        Value::String(query),
                        serde_json::to_value(offset)?,
                        serde_json::to_value(limit)?
                    ],
                )
                .await?
                .expect("[hey][smartypants] search.artists should return a SpotifyPaginationResponseObject")
            )
        })
            .await
    }

    pub async fn playlists(
        &self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "search",
                    "playlists",
                    &[
                        Value::String(query),
                        serde_json::to_value(offset)?,
                        serde_json::to_value(limit)?
                    ],
                )
                .await?
                .expect("[hey][smartypants] search.playlists should return a SpotifyPaginationResponseObject")
            )
        })
            .await
    }

    pub async fn tracks(
        &self,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "search",
                    "tracks",
                    &[
                        Value::String(query),
                        serde_json::to_value(offset)?,
                        serde_json::to_value(limit)?
                    ],
                )
                .await?
                .expect("[hey][smartypants] search.tracks should return a SpotifyPaginationResponseObject")
            )
        })
            .await
    }
}
