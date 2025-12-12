use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::album::SpotubeSimpleAlbumObject;
use crate::api::plugin::models::artist::SpotubeFullArtistObject;
use crate::api::plugin::models::playlist::SpotubeSimplePlaylistObject;
use crate::api::plugin::models::track::SpotubeFullTrackObject;

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeSearchResponseObject {
    // pub type_name: String,
    pub albums: Vec<SpotubeSimpleAlbumObject>,
    pub artists: Vec<SpotubeFullArtistObject>,
    pub playlists: Vec<SpotubeSimplePlaylistObject>,
    pub tracks: Vec<SpotubeFullTrackObject>,
}