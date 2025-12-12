use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};

#[derive(Debug, Serialize, Deserialize, Clone)]
#[frb(dart_metadata=("freezed"),json_serializable)]
#[serde(    rename_all = "camelCase")]
pub struct SpotubeImageObject {
    // pub type_name: String,
    pub url: String,
    pub width: Option<i32>,
    pub height: Option<i32>,
}