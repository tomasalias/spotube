use crate::api::plugin::models::audio_source::{
    SpotubeAudioSourceMatchObject, SpotubeAudioSourceStreamObject,
};
use crate::api::plugin::models::track::SpotubeTrackObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};

pub struct PluginAudioSourceEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginAudioSourceEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginAudioSourceEndpoint<'a> {
        PluginAudioSourceEndpoint(context)
    }

    pub async fn matches(
        &self,
        track: SpotubeTrackObject,
    ) -> anyhow::Result<Vec<SpotubeAudioSourceMatchObject>> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json(
                    ctx.clone(),
                    "audioSource",
                    "matches",
                    &[track]
                )
                .await?
                .expect("[hey][smartypants] album.tracks should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn streams(
        &self,
        matched: SpotubeAudioSourceMatchObject,
    ) -> anyhow::Result<Vec<SpotubeAudioSourceStreamObject>> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json(
                    ctx.clone(),
                    "audioSource",
                    "streams",
                    &[matched]
                )
                .await?
                .expect("[hey][smartypants] audioSource.streams should return a SpotifyPaginationResponseObject")
            )
        }).await
    }
}