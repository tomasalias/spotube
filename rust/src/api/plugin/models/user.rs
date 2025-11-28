use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::image::SpotubeImageObject;

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeUserObject {
    pub type_name: String,
    pub id: String,
    pub name: String,
    #[serde(default)]
    pub images: Vec<SpotubeImageObject>, // @Default([])
    pub external_uri: String,
}
