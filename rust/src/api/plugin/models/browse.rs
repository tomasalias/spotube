use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::album::{SpotubeFullAlbumObject, SpotubeSimpleAlbumObject};
use crate::api::plugin::models::artist::{SpotubeFullArtistObject, SpotubeSimpleArtistObject};
use crate::api::plugin::models::playlist::{SpotubeFullPlaylistObject, SpotubeSimplePlaylistObject};
use crate::api::plugin::models::track::{SpotubeFullTrackObject};

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"))]
pub struct SpotubeBrowseSectionObject {
    pub type_name: String,
    pub id: String,
    pub title: String,
    pub external_uri: String,
    pub browse_more: bool,
    pub items: Vec<SpotubeBrowseSectionResponseObjectItem>,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase", tag = "type_name")]
pub enum SpotubeBrowseSectionResponseObjectItem {
    #[serde(rename = "track")]
    Track(SpotubeFullTrackObject),
    #[serde(rename = "playlist_full")]
    PlaylistFull(SpotubeFullPlaylistObject),
    #[serde(rename = "playlist_simple")]
    PlaylistSimple(SpotubeSimplePlaylistObject),
    #[serde(rename = "album_simple")]
    AlbumSimple(SpotubeSimpleAlbumObject),
    #[serde(rename = "album_full")]
    AlbumFull(SpotubeFullAlbumObject),
    #[serde(rename = "artist_full")]
    ArtistFull(SpotubeFullArtistObject),
    #[serde(rename = "artist_simple")]
    ArtistSimple(SpotubeSimpleArtistObject),
}
