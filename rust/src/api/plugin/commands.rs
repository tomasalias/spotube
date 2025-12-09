use flutter_rust_bridge::frb;
use crate::api::plugin::models::album::SpotubeFullAlbumObject;
use crate::api::plugin::models::artist::SpotubeFullArtistObject;
use crate::api::plugin::models::audio_source::{SpotubeAudioSourceContainerPreset, SpotubeAudioSourceMatchObject, SpotubeAudioSourceStreamObject};
use crate::api::plugin::models::core::{
    PluginConfiguration, PluginUpdateAvailable, ScrobbleDetails,
};
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::playlist::SpotubeFullPlaylistObject;
use crate::api::plugin::models::search::SpotubeSearchResponseObject;
use crate::api::plugin::models::track::SpotubeFullTrackObject;
use crate::api::plugin::models::user::SpotubeUserObject;
use tokio::sync::oneshot;

#[derive(Debug)]
pub enum ArtistCommands {
    GetArtist {
        id: String,
        response_tx: oneshot::Sender<anyhow::Result<SpotubeFullArtistObject>>,
    },
    TopTracks {
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Albums {
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Related {
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Save {
        ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Unsave {
        ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
}

#[derive(Debug)]
pub enum AlbumCommands {
    GetAlbum {
        id: String,
        response_tx: oneshot::Sender<anyhow::Result<SpotubeFullAlbumObject>>,
    },
    Tracks {
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Releases {
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Save {
        ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Unsave {
        ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
}

#[derive(Debug)]
pub enum AudioSourceCommands {
    SupportedPresets {
        response_tx: oneshot::Sender<anyhow::Result<Vec<SpotubeAudioSourceContainerPreset>>>,
    },
    Matches {
        track: SpotubeFullTrackObject,
        response_tx: oneshot::Sender<anyhow::Result<Vec<SpotubeAudioSourceMatchObject>>>,
    },
    Streams {
        matched: SpotubeAudioSourceMatchObject,
        response_tx: oneshot::Sender<anyhow::Result<Vec<SpotubeAudioSourceStreamObject>>>,
    },
}

#[derive(Debug)]
pub enum AuthCommands {
    Authenticate {
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Logout {
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    IsAuthenticated {
        response_tx: oneshot::Sender<anyhow::Result<bool>>,
    },
}

#[derive(Debug)]
pub enum BrowseCommands {
    Sections {
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    SectionItems {
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
}

#[derive(Debug)]
pub enum CoreCommands {
    CheckUpdate {
        plugin_config: PluginConfiguration,
        response_tx: oneshot::Sender<anyhow::Result<Option<PluginUpdateAvailable>>>,
    },
    Support {
        response_tx: oneshot::Sender<anyhow::Result<String>>,
    },
    Scrobble {
        details: ScrobbleDetails,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
}

#[derive(Debug)]
pub enum PlaylistCommands {
    GetPlaylist {
        id: String,
        response_tx: oneshot::Sender<anyhow::Result<SpotubeFullPlaylistObject>>,
    },
    Tracks {
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    CreatePlaylist {
        user_id: String,
        name: String,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
        response_tx: oneshot::Sender<anyhow::Result<Option<SpotubeFullPlaylistObject>>>,
    },
    UpdatePlaylist {
        playlist_id: String,
        name: Option<String>,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    DeletePlaylist {
        playlist_id: String,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    AddTracks {
        playlist_id: String,
        track_ids: Vec<String>,
        position: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    RemoveTracks {
        playlist_id: String,
        track_ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Save {
        playlist_id: String,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Unsave {
        playlist_id: String,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
}

#[derive(Debug)]
pub enum SearchCommands {
    Chips {
        response_tx: oneshot::Sender<anyhow::Result<Vec<String>>>,
    },
    All {
        query: String,
        response_tx: oneshot::Sender<anyhow::Result<SpotubeSearchResponseObject>>,
    },
    Tracks {
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Albums {
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Artists {
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    Playlists {
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
}

#[derive(Debug)]
pub enum TrackCommands {
    GetTrack {
        id: String,
        response_tx: oneshot::Sender<anyhow::Result<SpotubeFullTrackObject>>,
    },
    Save {
        ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Unsave {
        ids: Vec<String>,
        response_tx: oneshot::Sender<anyhow::Result<()>>,
    },
    Radio {
        id: String,
        response_tx: oneshot::Sender<anyhow::Result<Vec<SpotubeFullTrackObject>>>,
    },
}

#[derive(Debug)]
pub enum UserCommands {
    Me {
        response_tx: oneshot::Sender<anyhow::Result<SpotubeUserObject>>,
    },
    SavedTracks {
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    SavedAlbums {
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    SavedArtists {
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
    SavedPlaylists {
        offset: Option<u32>,
        limit: Option<u32>,
        response_tx: oneshot::Sender<anyhow::Result<SpotubePaginationResponseObject>>,
    },
}

#[derive(Debug)]
#[frb(unignore)]
pub enum PluginCommand {
    Artist(ArtistCommands),
    Album(AlbumCommands),
    AudioSource(AudioSourceCommands),
    Browse(BrowseCommands),
    Track(TrackCommands),
    User(UserCommands),
    Playlist(PlaylistCommands),
    Search(SearchCommands),
    Core(CoreCommands),
    Auth(AuthCommands),
    Shutdown,
}
