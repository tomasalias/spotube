use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::artist::SpotubeSimpleArtistObject;
use crate::api::plugin::models::image::SpotubeImageObject;

#[derive(Debug, Serialize, Deserialize, Clone)]
pub enum SpotubeAlbumType {
    Album,
    Single,
    Compilation,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeSimpleAlbumObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub external_uri: String,
    pub artists: Vec<SpotubeSimpleArtistObject>,
    #[serde(default)]
    pub images: Vec<SpotubeImageObject>,
    pub album_type: SpotubeAlbumType,
    pub release_date: Option<String>,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeFullAlbumObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub artists: Vec<SpotubeSimpleArtistObject>,
    #[serde(default)]
    pub images: Vec<SpotubeImageObject>,
    pub release_date: String,
    pub external_uri: String,
    pub total_tracks: i32,
    pub album_type: SpotubeAlbumType,
    pub record_label: Option<String>,
    pub genres: Option<Vec<String>>,
}
