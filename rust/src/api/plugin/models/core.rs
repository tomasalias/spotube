use flutter_rust_bridge::frb;
use heck::ToKebabCase;
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(rename_all = "lowercase")]
pub enum PluginApi {
    Webview,
    Localstorage,
    Timezone,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
pub enum PluginAbility {
    #[serde(rename = "authentication")]
    Authentication,
    #[serde(rename = "scrobbling")]
    Scrobbling,
    #[serde(rename = "metadata")]
    Metadata,
    #[serde(rename = "audio-source")]
    AudioSource,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct PluginConfiguration {
    pub name: String,
    pub description: String,
    pub version: String,
    pub author: String,
    pub entry_point: String,
    pub plugin_api_version: String,

    #[serde(default)]
    pub apis: Vec<PluginApi>,

    #[serde(default)]
    pub abilities: Vec<PluginAbility>,

    pub repository: Option<String>,
}

impl PluginConfiguration {
    #[frb(sync)]
    pub fn slug(&self) -> String {
        self.name.to_kebab_case()
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct PluginUpdateAvailable {
    pub download_url: String,
    pub version: String,
    pub changelog: Option<String>,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct ScrobbleArtist {
    pub id: String,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct ScrobbleAlbum {
    pub id: String,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct ScrobbleDetails {
    pub id: String,
    pub title: String,
    pub artists: Vec<ScrobbleArtist>,
    pub album: ScrobbleAlbum,
    pub timestamp: Option<i32>,
    pub duration_ms: Option<u32>,
    pub isrc: Option<String>,
}
