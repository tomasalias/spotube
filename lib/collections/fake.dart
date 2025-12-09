import 'package:spotube/models/database/database.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/history/summary.dart';

abstract class FakeData {
  static const SpotubeImageObject image = SpotubeImageObject(
    typeName: "image",
    height: 100,
    width: 100,
    url: "https://dummyimage.com/100x100/cfcfcf/cfcfcf.jpg",
  );

  static const SpotubeFullArtistObject artist = SpotubeFullArtistObject(
    typeName: "artist_full",
    id: "1",
    name: "What an artist",
    externalUri: "https://example.com",
    followers: 10000,
    genres: ["genre"],
    images: [
      SpotubeImageObject(
        typeName: "image",
        height: 100,
        width: 100,
        url: "https://dummyimage.com/100x100/cfcfcf/cfcfcf.jpg",
      ),
    ],
  );

  static const SpotubeFullAlbumObject album = SpotubeFullAlbumObject(
    typeName: "album_full",
    id: "1",
    name: "A good album",
    externalUri: "https://example.com",
    artists: [artistSimple],
    releaseDate: "2021-01-01",
    albumType: SpotubeAlbumType.album,
    images: [image],
    totalTracks: 10,
    genres: ["genre"],
    recordLabel: "Record Label",
  );

  static const SpotubeSimpleArtistObject artistSimple =
      SpotubeSimpleArtistObject(
    typeName: "artist_simple",
    id: "1",
    name: "What an artist",
    externalUri: "https://example.com",
    images: null,
  );

  static const SpotubeSimpleAlbumObject albumSimple = SpotubeSimpleAlbumObject(
    typeName: "album_simple",
    albumType: SpotubeAlbumType.album,
    artists: [],
    externalUri: "https://example.com",
    id: "1",
    name: "A good album",
    releaseDate: "2021-01-01",
    images: [
      SpotubeImageObject(
        typeName: "image",
        height: 1,
        width: 1,
        url: "https://dummyimage.com/100x100/cfcfcf/cfcfcf.jpg",
      )
    ],
  );

  static const SpotubeTrackObject track = SpotubeTrackObject.full(
    SpotubeFullTrackObject(
      typeName: "track",
      id: "1",
      name: "A good track",
      externalUri: "https://example.com",
      album: albumSimple,
      durationMs: 3 * 60 * 1000, // 3 minutes
      isrc: "USUM72112345",
      explicit: false,
      artists: [artistSimple],
    ),
  );

  static const SpotubeUserObject user = SpotubeUserObject(
    typeName: "user",
    id: "1",
    name: "User Name",
    externalUri: "https://example.com",
    images: [image],
  );

  static const SpotubeFullPlaylistObject playlist = SpotubeFullPlaylistObject(
      typeName: "playlist_full",
      id: "1",
      name: "A good playlist",
      description: "A very good playlist description",
      externalUri: "https://example.com",
      collaborative: false,
      public: true,
      owner: user,
      images: [image],
      collaborators: [user]);

  static const SpotubeSimplePlaylistObject playlistSimple =
      SpotubeSimplePlaylistObject(
    typeName: "playlist_simple",
    id: "1",
    name: "A good playlist",
    description: "A very good playlist description",
    externalUri: "https://example.com",
    owner: user,
    images: [image],
  );

  static const SpotubeBrowseSectionObject browseSection =
      SpotubeBrowseSectionObject(
          typeName: "browse_section",
          id: "section-id",
          title: "Browse Section",
          browseMore: true,
          externalUri: "https://example.com/browse/section",
          items: [
        SpotubeBrowseSectionResponseObjectItem.playlistSimple(playlistSimple),
        SpotubeBrowseSectionResponseObjectItem.playlistSimple(playlistSimple),
        SpotubeBrowseSectionResponseObjectItem.playlistSimple(playlistSimple),
      ]);

  static const historySummary = PlaybackHistorySummary(
    albums: 1,
    artists: 1,
    duration: Duration(seconds: 1),
    playlists: 1,
    tracks: 1,
    fees: 1,
  );

  static final historyRecentlyPlayedPlaylist = HistoryTableData(
    id: 0,
    type: HistoryEntryType.track,
    createdAt: DateTime.now(),
    itemId: "1",
    data: playlist.toJson(),
  );

  static final historyRecentlyPlayedAlbum = HistoryTableData(
    id: 0,
    type: HistoryEntryType.track,
    createdAt: DateTime.now(),
    itemId: "1",
    data: album.toJson(),
  );

  static final historyRecentlyPlayedItems = List.generate(
    10,
    (index) => index % 2 == 0
        ? historyRecentlyPlayedPlaylist
        : historyRecentlyPlayedAlbum,
  );
}
