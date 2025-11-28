use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::image::SpotubeImageObject;
use crate::api::plugin::models::user::SpotubeUserObject;

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeSimplePlaylistObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub description: String,
    pub external_uri: String,
    pub owner: SpotubeUserObject,
    #[serde(default)]
    pub images: Vec<SpotubeImageObject>, // @Default([])
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeFullPlaylistObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    pub description: String,
    pub external_uri: String,
    pub owner: SpotubeUserObject,
    #[serde(default)]
    pub images: Vec<SpotubeImageObject>, // @Default([])
    #[serde(default)]
    pub collaborators: Vec<SpotubeUserObject>, // @Default([])
    #[serde(default)]
    pub collaborative: bool, // @Default(false)
    #[serde(default)]
    pub public: bool, // @Default(false)
}