use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed"),json_serializable)]
#[serde(rename_all = "lowercase")]
pub enum SpotubeMediaCompressionType {
    Lossy,
    Lossless,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeAudioLossyContainerQuality {
    pub bitrate: i32,
}

impl SpotubeAudioLossyContainerQuality {
    pub fn to_string_fmt(&self) -> String {
        let kbps = self.bitrate as f64 / 1000.0;
        if kbps.fract() == 0.0 {
            format!("{}kbps", kbps as i32)
        } else {
            format!("{:.1}kbps", kbps)
        }
    }
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeAudioLosslessContainerQuality {
    pub bit_depth: i32,
    pub sample_rate: i32,
}

impl SpotubeAudioLosslessContainerQuality {
    #[frb(sync)]
    pub fn to_string_fmt(&self) -> String {
        let khz = self.sample_rate as f64 / 1000.0;
        if khz.fract() == 0.0 {
            format!("{}bit • {}kHz", self.bit_depth, khz as i32)
        } else {
            format!("{}bit • {:.1}kHz", self.bit_depth, khz)
        }
    }
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed"),json_serializable)]
#[serde(tag = "type", content = "data")]
pub enum SpotubeAudioSourceContainerPreset {
    #[serde(rename = "lossy")]
    Lossy {
        #[serde(rename = "type")]
        compression_type: SpotubeMediaCompressionType,
        name: String,
        qualities: Vec<SpotubeAudioLossyContainerQuality>,
    },

    #[serde(rename = "lossless")]
    Lossless {
        #[serde(rename = "type")]
        compression_type: SpotubeMediaCompressionType,
        name: String,
        qualities: Vec<SpotubeAudioLosslessContainerQuality>,
    },
}

impl SpotubeAudioSourceContainerPreset {
    #[frb(sync)]
    pub fn file_extension(&self) -> String {
        let name = match self {
            Self::Lossy { name, .. } => name,
            Self::Lossless { name, .. } => name,
        };

        match name.as_str() {
            "mp4" => "m4a".into(),
            "webm" => "weba".into(),
            other => other.into(),
        }
    }
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeAudioSourceMatchObject {
    // pub type_name: String,
    pub id: String,
    pub title: String,
    pub artists: Vec<String>,
    pub duration: u32, // Duration in ms

    pub thumbnail: Option<String>,
    pub external_uri: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[frb(dart_metadata=("freezed"),json_serializable)]
pub struct SpotubeAudioSourceStreamObject {
    pub type_name: String,
    pub url: String,
    pub container: String,
    #[serde(rename = "type")]
    pub compression_type: SpotubeMediaCompressionType,

    pub codec: Option<String>,
    pub bitrate: Option<f64>,
    pub bit_depth: Option<i32>,
    pub sample_rate: Option<f64>,
}
