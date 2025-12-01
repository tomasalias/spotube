use crate::api::plugin::models::track::SpotubeTrackObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};
use serde_json::Value;

pub struct PluginTrackEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginTrackEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginTrackEndpoint<'a> {
        PluginTrackEndpoint(context)
    }

    pub async fn get_track(&self, id: String) -> anyhow::Result<SpotubeTrackObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json(
                    ctx.clone(),
                    "track",
                    "getTrack",
                    &[
                        id
                    ],
                )
                .await?
                .expect("[hey][smartypants] track.getTrack should return a SpotifyTrackObject")
            )
        })
        .await
    }

    pub async fn save(&self, ids: Vec<String>) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, ()>(
                    ctx.clone(),
                    "track",
                    "save",
                    &[Value::Array(ids.into_iter().map(|id| Value::String(id)).collect())]
                )
                .await?
                .expect("[hey][smartypants] track.save should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn unsave(&self, ids: Vec<String>) -> anyhow::Result<()> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, ()>(
                    ctx.clone(),
                    "track",
                    "unsave",
                    &[Value::Array(ids.into_iter().map(|id| Value::String(id)).collect())]
                )
                .await?
                .expect("[hey][smartypants] track.unsave should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn radio(&self, id: String) -> anyhow::Result<Vec<SpotubeTrackObject>> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, Vec<SpotubeTrackObject>>(
                    ctx.clone(),
                    "track",
                    "radio",
                    &[id],
                )
                .await?
                .expect("[hey][smartypants] track.radio should return a SpotifyPaginationResponseObject")
            )
        }).await
    }
}
