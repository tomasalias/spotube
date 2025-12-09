use flutter_rust_bridge::frb;
use crate::api::plugin::models::album::SpotubeSimpleAlbumObject;
use crate::api::plugin::models::artist::SpotubeSimpleArtistObject;
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeFullTrackObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub external_uri: String,
    #[serde(default)]
    pub artists: Vec<SpotubeSimpleArtistObject>,
    pub album: SpotubeSimpleAlbumObject,
    pub duration_ms: u32, // Duration in ms
    pub isrc: String,
    pub explicit: bool,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(unignore,dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeLocalTrackObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub external_uri: String,
    #[serde(default)]
    pub artists: Vec<SpotubeSimpleArtistObject>,
    pub album: SpotubeSimpleAlbumObject,
    pub duration_ms: u32, // Duration in ms
    pub path: String,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(unignore,dart_metadata=("freezed"),json_serializable)]
pub enum SpotubeTrackObject {
    Full(SpotubeFullTrackObject),
    Local(SpotubeLocalTrackObject),
}