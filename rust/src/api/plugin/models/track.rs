use flutter_rust_bridge::frb;
use crate::api::plugin::models::album::SpotubeSimpleAlbumObject;
use crate::api::plugin::models::artist::SpotubeSimpleArtistObject;
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeTrackObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub external_uri: String,
    #[serde(default)]
    pub artists: Vec<SpotubeSimpleArtistObject>,
    pub album: SpotubeSimpleAlbumObject,
    pub duration_ms: u64, // Duration in ms
    pub isrc: String,
    pub explicit: bool,
}
