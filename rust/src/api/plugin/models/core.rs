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
    pub fn slug(&self) -> String {
        self.name.to_kebab_case()
    }
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct PluginUpdateAvailable {
    pub download_url: String,
    pub version: String,
    pub changelog: Option<String>,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
pub struct ScrobbleArtist {
    pub id: String,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
pub struct ScrobbleAlbum {
    pub id: String,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq)]
pub struct ScrobbleDetails {
    pub id: String,
    pub title: String,
    pub artists: Vec<ScrobbleArtist>,
    pub album: ScrobbleAlbum,
    pub timestamp: Option<i64>,
    pub duration_ms: Option<u32>,
    pub isrc: Option<String>,
}
