use flutter_rust_bridge::frb;
use serde::{Deserialize, Serialize};
use crate::api::plugin::models::album::{SpotubeFullAlbumObject, SpotubeSimpleAlbumObject};
use crate::api::plugin::models::artist::{SpotubeFullArtistObject, SpotubeSimpleArtistObject};
use crate::api::plugin::models::browse::SpotubeBrowseSectionObject;
use crate::api::plugin::models::playlist::{SpotubeFullPlaylistObject, SpotubeSimplePlaylistObject};
use crate::api::plugin::models::track::SpotubeTrackObject;

#[derive(Serialize, Deserialize, Debug, Clone)]
#[serde(rename_all = "camelCase")]
#[frb(dart_metadata=("freezed"))]
pub struct SpotubePaginationResponseObject {
    pub limit: i32,
    pub next_offset: Option<i32>,
    pub total: i32,
    pub has_more: bool,
    pub items: Vec<SpotubePaginationResponseObjectItem>,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
#[serde(rename_all = "camelCase", tag = "type_name")]
pub enum SpotubePaginationResponseObjectItem {
    #[serde(rename = "track")]
    Track(SpotubeTrackObject),
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
    #[serde(rename = "browse_section")]
    BrowseSection(SpotubeBrowseSectionObject),
}
