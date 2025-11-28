use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::image::SpotubeImageObject;

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeSimpleArtistObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub external_uri: String,
    pub images: Option<Vec<SpotubeImageObject>>,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeFullArtistObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub external_uri: String,
    #[serde(default)]
    pub images: Vec<SpotubeImageObject>,
    pub genres: Option<Vec<String>>,
    pub followers: Option<i32>,
}