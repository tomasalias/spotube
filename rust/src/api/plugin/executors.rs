use crate::api::plugin::commands::{
    AlbumCommands, ArtistCommands, AudioSourceCommands, AuthCommands, BrowseCommands, CoreCommands,
    PlaylistCommands, SearchCommands, TrackCommands, UserCommands,
};
use crate::internal::album::PluginAlbumEndpoint;
use crate::internal::artist::PluginArtistEndpoint;
use crate::internal::audio_source::PluginAudioSourceEndpoint;
use crate::internal::auth::PluginAuthEndpoint;
use crate::internal::browse::PluginBrowseEndpoint;
use crate::internal::core::PluginCoreEndpoint;
use crate::internal::playlist::PluginPlaylistEndpoint;
use crate::internal::search::PluginSearchEndpoint;
use crate::internal::track::PluginTrackEndpoint;
use crate::internal::user::PluginUserEndpoint;
use flutter_rust_bridge::frb;
use rquickjs::AsyncContext;
use std::fmt::Debug;
use tokio::sync::oneshot;

fn send_response<T>(tx: oneshot::Sender<T>, response: T) -> anyhow::Result<()>
where
    T: Debug,
{
    tx.send(response)
        .map_err(|e| anyhow::anyhow!("[send_response] Failed to send response: {:?}", e))
}

#[frb(ignore)]
pub async fn execute_artists(
    command: ArtistCommands,
    context: &AsyncContext,
) -> anyhow::Result<()> {
    let artist = PluginArtistEndpoint::new(context);
    match command {
        ArtistCommands::GetArtist { id, response_tx } => {
            let artist = artist.get_artist(id).await;
            send_response(response_tx, artist)
        }
        ArtistCommands::TopTracks {
            id,
            offset,
            limit,
            response_tx,
        } => {
            let tracks = artist.top_tracks(id, offset, limit).await;
            send_response(response_tx, tracks)
        }
        ArtistCommands::Albums {
            id,
            offset,
            limit,
            response_tx,
        } => {
            let albums = artist.albums(id, offset, limit).await;
            send_response(response_tx, albums)
        }
        ArtistCommands::Related {
            id,
            offset,
            limit,
            response_tx,
        } => {
            let artists = artist.related(id, offset, limit).await;
            send_response(response_tx, artists)
        }
        ArtistCommands::Save { ids, response_tx } => {
            let res = artist.save(ids).await;
            send_response(response_tx, res)
        }
        ArtistCommands::Unsave { ids, response_tx } => {
            let res = artist.unsave(ids).await;
            send_response(response_tx, res)
        }
    }
}

#[frb(ignore)]
pub async fn execute_albums(command: AlbumCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let album = PluginAlbumEndpoint::new(context);
    match command {
        AlbumCommands::GetAlbum { id, response_tx } => {
            let album = album.get_album(id).await;
            send_response(response_tx, album)
        }
        AlbumCommands::Tracks {
            id,
            offset,
            limit,
            response_tx,
        } => {
            let tracks = album.tracks(id, offset, limit).await;
            send_response(response_tx, tracks)
        }
        AlbumCommands::Releases {
            offset,
            limit,
            response_tx,
        } => {
            let releases = album.releases(offset, limit).await;
            send_response(response_tx, releases)
        }
        AlbumCommands::Save { ids, response_tx } => {
            let res = album.save(ids).await;
            send_response(response_tx, res)
        }
        AlbumCommands::Unsave { ids, response_tx } => {
            let res = album.unsave(ids).await;
            send_response(response_tx, res)
        }
    }
}

#[frb(ignore)]
pub async fn execute_audio_source(
    command: AudioSourceCommands,
    context: &AsyncContext,
) -> anyhow::Result<()> {
    let audio_source = PluginAudioSourceEndpoint::new(context);
    match command {
        AudioSourceCommands::SupportedPresets { response_tx } => {
            let audio_source = audio_source.supported_presets().await;
            send_response(response_tx, audio_source)
        }
        AudioSourceCommands::Matches { track, response_tx } => {
            let audio_source = audio_source.matches(track).await;
            send_response(response_tx, audio_source)
        }
        AudioSourceCommands::Streams {
            matched,
            response_tx,
        } => {
            let audio_source = audio_source.streams(matched).await;
            send_response(response_tx, audio_source)
        }
    }
}

#[frb(ignore)]
pub async fn execute_auth(command: AuthCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let auth = PluginAuthEndpoint::new(context);
    match command {
        AuthCommands::Authenticate { response_tx } => {
            let res = auth.authenticate().await;
            send_response(response_tx, res)
        }
        AuthCommands::IsAuthenticated { response_tx } => {
            let res = auth.is_authenticated().await;
            send_response(response_tx, res)
        }
        AuthCommands::Logout { response_tx } => {
            let res = auth.logout().await;
            send_response(response_tx, res)
        }
    }
}

#[frb(ignore)]
pub async fn execute_browse(command: BrowseCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let browse = PluginBrowseEndpoint::new(context);
    match command {
        BrowseCommands::Sections {
            offset,
            limit,
            response_tx,
        } => {
            let sections = browse.sections(offset, limit).await;
            send_response(response_tx, sections)
        }
        BrowseCommands::SectionItems {
            id,
            offset,
            limit,
            response_tx,
        } => {
            let items = browse.section_items(id, offset, limit).await;
            send_response(response_tx, items)
        }
    }
}

#[frb(ignore)]
pub async fn execute_core(command: CoreCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let core = PluginCoreEndpoint::new(context);
    match command {
        CoreCommands::CheckUpdate {
            response_tx,
            plugin_config,
        } => {
            let res = core.check_update(plugin_config).await;
            send_response(response_tx, res)
        }
        CoreCommands::Scrobble {
            details,
            response_tx,
        } => {
            let res = core.scrobble(details).await;
            send_response(response_tx, res)
        }
        CoreCommands::Support { response_tx } => {
            let res = core.support().await;
            send_response(response_tx, res)
        }
    }
}

#[frb(ignore)]
pub async fn execute_playlist(
    command: PlaylistCommands,
    context: &AsyncContext,
) -> anyhow::Result<()> {
    let playlist = PluginPlaylistEndpoint::new(context);
    match command {
        PlaylistCommands::GetPlaylist { id, response_tx } => {
            let playlist = playlist.get_playlist(id).await;
            send_response(response_tx, playlist)
        }
        PlaylistCommands::Tracks {
            id,
            offset,
            limit,
            response_tx,
        } => {
            let tracks = playlist.tracks(id, offset, limit).await;
            send_response(response_tx, tracks)
        }
        PlaylistCommands::CreatePlaylist {
            user_id,
            name,
            description,
            public,
            collaborative,
            response_tx,
        } => {
            let playlist = playlist
                .create(user_id, name, description, public, collaborative)
                .await;
            send_response(response_tx, playlist)
        }
        PlaylistCommands::UpdatePlaylist {
            playlist_id,
            name,
            description,
            public,
            collaborative,
            response_tx,
        } => {
            let res = playlist
                .update(playlist_id, name, description, public, collaborative)
                .await;
            send_response(response_tx, res)
        }
        PlaylistCommands::DeletePlaylist {
            playlist_id,
            response_tx,
        } => {
            let res = playlist.delete_playlist(playlist_id).await;
            send_response(response_tx, res)
        }
        PlaylistCommands::AddTracks {
            playlist_id,
            track_ids,
            position,
            response_tx,
        } => {
            let res = playlist.add_tracks(playlist_id, track_ids, position).await;
            send_response(response_tx, res)
        }
        PlaylistCommands::RemoveTracks {
            playlist_id,
            track_ids,
            response_tx,
        } => {
            let res = playlist.remove_tracks(playlist_id, track_ids).await;
            send_response(response_tx, res)
        }
        PlaylistCommands::Save {
            playlist_id,
            response_tx,
        } => {
            let res = playlist.save(playlist_id).await;
            send_response(response_tx, res)
        }
        PlaylistCommands::Unsave {
            playlist_id,
            response_tx,
        } => {
            let res = playlist.unsave(playlist_id).await;
            send_response(response_tx, res)
        }
    }
}

#[frb(ignore)]
pub async fn execute_search(command: SearchCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let search = PluginSearchEndpoint::new(context);
    match command {
        SearchCommands::Chips { response_tx } => {
            let chips = search.chips().await;
            send_response(response_tx, chips)
        }
        SearchCommands::All { query, response_tx } => {
            let all = search.all(query).await;
            send_response(response_tx, all)
        }
        SearchCommands::Tracks {
            query,
            offset,
            limit,
            response_tx,
        } => {
            let tracks = search.tracks(query, offset, limit).await;
            send_response(response_tx, tracks)
        }
        SearchCommands::Albums {
            query,
            offset,
            limit,
            response_tx,
        } => {
            let albums = search.albums(query, offset, limit).await;
            send_response(response_tx, albums)
        }
        SearchCommands::Artists {
            query,
            offset,
            limit,
            response_tx,
        } => {
            let artists = search.artists(query, offset, limit).await;
            send_response(response_tx, artists)
        }
        SearchCommands::Playlists {
            query,
            offset,
            limit,
            response_tx,
        } => {
            let playlists = search.playlists(query, offset, limit).await;
            send_response(response_tx, playlists)
        }
    }
}

#[frb(ignore)]
pub async fn execute_track(command: TrackCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let track = PluginTrackEndpoint::new(context);
    match command {
        TrackCommands::GetTrack { id, response_tx } => {
            let res = track.get_track(id).await;
            send_response(response_tx, res)
        }
        TrackCommands::Save { ids, response_tx } => {
            let res = track.save(ids).await;
            send_response(response_tx, res)
        }
        TrackCommands::Unsave { ids, response_tx } => {
            let res = track.unsave(ids).await;
            send_response(response_tx, res)
        }
        TrackCommands::Radio { id, response_tx } => {
            let res = track.radio(id).await;
            send_response(response_tx, res)
        }
    }
}

#[frb(ignore)]
pub async fn execute_user(command: UserCommands, context: &AsyncContext) -> anyhow::Result<()> {
    let user = PluginUserEndpoint::new(context);
    match command {
        UserCommands::Me { response_tx } => {
            let me = user.me().await;
            send_response(response_tx, me)
        }
        UserCommands::SavedTracks {
            offset,
            limit,
            response_tx,
        } => {
            let tracks = user.saved_tracks(offset, limit).await;
            send_response(response_tx, tracks)
        }
        UserCommands::SavedAlbums {
            offset,
            limit,
            response_tx,
        } => {
            let albums = user.saved_albums(offset, limit).await;
            send_response(response_tx, albums)
        }
        UserCommands::SavedArtists {
            offset,
            limit,
            response_tx,
        } => {
            let artists = user.saved_artists(offset, limit).await;
            send_response(response_tx, artists)
        }
        UserCommands::SavedPlaylists {
            offset,
            limit,
            response_tx,
        } => {
            let playlists = user.saved_playlists(offset, limit).await;
            send_response(response_tx, playlists)
        }
    }
}
