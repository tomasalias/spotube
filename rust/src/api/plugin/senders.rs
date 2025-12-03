use crate::api::plugin::commands::{
    AlbumCommands, ArtistCommands, AudioSourceCommands, AuthCommands, BrowseCommands, CoreCommands,
    PlaylistCommands, PluginCommand, SearchCommands, TrackCommands, UserCommands,
};
use crate::api::plugin::models::album::SpotubeFullAlbumObject;
use crate::api::plugin::models::artist::SpotubeFullArtistObject;
use crate::api::plugin::models::audio_source::{
    SpotubeAudioSourceMatchObject, SpotubeAudioSourceStreamObject,
};
use crate::api::plugin::models::core::{
    PluginConfiguration, PluginUpdateAvailable, ScrobbleDetails,
};
use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::api::plugin::models::playlist::SpotubeFullPlaylistObject;
use crate::api::plugin::models::search::SpotubeSearchResponseObject;
use crate::api::plugin::models::track::SpotubeTrackObject;
use crate::api::plugin::models::user::SpotubeUserObject;
use crate::api::plugin::plugin::OpaqueSender;
use anyhow::anyhow;
use flutter_rust_bridge::frb;
use std::backtrace::Backtrace;
use tokio::sync::oneshot;

#[derive(Debug, Clone, Copy)]
pub struct PluginArtistSender {}

impl PluginArtistSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn get_artist(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
    ) -> anyhow::Result<SpotubeFullArtistObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Artist(ArtistCommands::GetArtist {
                id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn top_tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Artist(ArtistCommands::TopTracks {
                id,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn albums(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Artist(ArtistCommands::Albums {
                id,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn related(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Artist(ArtistCommands::Related {
                id,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn save(&self, mpsc_tx: &OpaqueSender, ids: Vec<String>) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Artist(ArtistCommands::Save {
                ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn unsave(&self, mpsc_tx: &OpaqueSender, ids: Vec<String>) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Artist(ArtistCommands::Unsave {
                ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginAlbumSender {}

impl PluginAlbumSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn get_album(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
    ) -> anyhow::Result<SpotubeFullAlbumObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Album(AlbumCommands::GetAlbum {
                id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Album(AlbumCommands::Tracks {
                id,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn releases(
        &self,
        mpsc_tx: &OpaqueSender,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Album(AlbumCommands::Releases {
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn save(&self, mpsc_tx: &OpaqueSender, ids: Vec<String>) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Album(AlbumCommands::Save {
                ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn unsave(&self, mpsc_tx: &OpaqueSender, ids: Vec<String>) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Album(AlbumCommands::Unsave {
                ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginAudioSourceSender {}

impl PluginAudioSourceSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn matches(
        &self,
        mpsc_tx: &OpaqueSender,
        track: SpotubeTrackObject,
    ) -> anyhow::Result<Vec<SpotubeAudioSourceMatchObject>> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::AudioSource(AudioSourceCommands::Matches {
                track,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn streams(
        &self,
        mpsc_tx: &OpaqueSender,
        matched: SpotubeAudioSourceMatchObject,
    ) -> anyhow::Result<Vec<SpotubeAudioSourceStreamObject>> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::AudioSource(AudioSourceCommands::Streams {
                matched,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginAuthSender {}

impl PluginAuthSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn authenticate(&self, mpsc_tx: &OpaqueSender) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Auth(AuthCommands::Authenticate {
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn logout(&self, mpsc_tx: &OpaqueSender) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Auth(AuthCommands::Logout {
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn is_authenticated(&self, mpsc_tx: &OpaqueSender) -> anyhow::Result<bool> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Auth(AuthCommands::IsAuthenticated {
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginBrowseSender {}

impl PluginBrowseSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn sections(
        &self,
        mpsc_tx: &OpaqueSender,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Browse(BrowseCommands::Sections {
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn section_items(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Browse(BrowseCommands::SectionItems {
                id,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginCoreSender {}

impl PluginCoreSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn check_update(
        &self,
        mpsc_tx: &OpaqueSender,
        plugin_config: PluginConfiguration,
    ) -> anyhow::Result<Option<PluginUpdateAvailable>> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Core(CoreCommands::CheckUpdate {
                plugin_config,
                response_tx: tx,
            }))
            .await?;

        rx.await
            .map_err(|e| {
                eprintln!("RecvError: {}", e);
                eprintln!("Stack trace:\n{:?}", Backtrace::capture());
                anyhow!("{e}")
            })
            .and_then(|o| o)
    }

    pub async fn support(&self, mpsc_tx: &OpaqueSender) -> anyhow::Result<String> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Core(CoreCommands::Support {
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn scrobble(
        &self,
        mpsc_tx: &OpaqueSender,
        details: ScrobbleDetails,
    ) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Core(CoreCommands::Scrobble {
                details,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginPlaylistSender {}

impl PluginPlaylistSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn get_playlist(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
    ) -> anyhow::Result<SpotubeFullPlaylistObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::GetPlaylist {
                id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::Tracks {
                id,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn create_playlist(
        &self,
        mpsc_tx: &OpaqueSender,
        user_id: String,
        name: String,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
    ) -> anyhow::Result<Option<SpotubeFullPlaylistObject>> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::CreatePlaylist {
                user_id,
                name,
                description,
                public,
                collaborative,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn update_playlist(
        &self,
        mpsc_tx: &OpaqueSender,
        playlist_id: String,
        name: Option<String>,
        description: Option<String>,
        public: Option<bool>,
        collaborative: Option<bool>,
    ) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::UpdatePlaylist {
                playlist_id,
                name,
                description,
                public,
                collaborative,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn delete_playlist(
        &self,
        mpsc_tx: &OpaqueSender,
        playlist_id: String,
    ) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::DeletePlaylist {
                playlist_id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn add_tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        playlist_id: String,
        track_ids: Vec<String>,
        position: Option<u32>,
    ) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::AddTracks {
                playlist_id,
                track_ids,
                position,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn remove_tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        playlist_id: String,
        track_ids: Vec<String>,
    ) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::RemoveTracks {
                playlist_id,
                track_ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn save(&self, mpsc_tx: &OpaqueSender, playlist_id: String) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::Save {
                playlist_id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn unsave(&self, mpsc_tx: &OpaqueSender, playlist_id: String) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Playlist(PlaylistCommands::Unsave {
                playlist_id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginSearchSender {}

impl PluginSearchSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn chips(&self, mpsc_tx: &OpaqueSender) -> anyhow::Result<Vec<String>> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Search(SearchCommands::Chips {
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn all(
        &self,
        mpsc_tx: &OpaqueSender,
        query: String,
    ) -> anyhow::Result<SpotubeSearchResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Search(SearchCommands::All {
                query,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Search(SearchCommands::Tracks {
                query,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn albums(
        &self,
        mpsc_tx: &OpaqueSender,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Search(SearchCommands::Albums {
                query,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn artists(
        &self,
        mpsc_tx: &OpaqueSender,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Search(SearchCommands::Artists {
                query,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn playlists(
        &self,
        mpsc_tx: &OpaqueSender,
        query: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Search(SearchCommands::Playlists {
                query,
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginTrackSender {}

impl PluginTrackSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn get_track(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
    ) -> anyhow::Result<SpotubeTrackObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Track(TrackCommands::GetTrack {
                id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn save(&self, mpsc_tx: &OpaqueSender, ids: Vec<String>) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Track(TrackCommands::Save {
                ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn unsave(&self, mpsc_tx: &OpaqueSender, ids: Vec<String>) -> anyhow::Result<()> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Track(TrackCommands::Unsave {
                ids,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn radio(
        &self,
        mpsc_tx: &OpaqueSender,
        id: String,
    ) -> anyhow::Result<Vec<SpotubeTrackObject>> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::Track(TrackCommands::Radio {
                id,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}

#[derive(Debug, Clone, Copy)]
pub struct PluginUserSender {}

impl PluginUserSender {
    #[frb(ignore)]
    pub fn new() -> Self {
        Self {}
    }

    pub async fn me(&self, mpsc_tx: &OpaqueSender) -> anyhow::Result<SpotubeUserObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::User(UserCommands::Me { response_tx: tx }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn saved_tracks(
        &self,
        mpsc_tx: &OpaqueSender,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::User(UserCommands::SavedTracks {
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn saved_albums(
        &self,
        mpsc_tx: &OpaqueSender,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::User(UserCommands::SavedAlbums {
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn saved_artists(
        &self,
        mpsc_tx: &OpaqueSender,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::User(UserCommands::SavedArtists {
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }

    pub async fn saved_playlists(
        &self,
        mpsc_tx: &OpaqueSender,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        let (tx, rx) = oneshot::channel();
        mpsc_tx
            .sender
            .send(PluginCommand::User(UserCommands::SavedPlaylists {
                offset,
                limit,
                response_tx: tx,
            }))
            .await?;

        rx.await.map_err(|e| anyhow!("{e}")).and_then(|o| o)
    }
}
