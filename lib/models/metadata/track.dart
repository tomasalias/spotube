part of 'metadata.dart';

extension AsMediaListSpotubeTrackObject on Iterable<SpotubeTrackObject> {
  List<SpotubeMedia> asMediaList() {
    return map((track) => SpotubeMedia(track)).toList();
  }
}

extension FullAsPartialSpotubeTrackObject on Iterable<SpotubeFullTrackObject>? {
  List<SpotubeTrackObject>? union() {
    return this?.map((track) => SpotubeTrackObject.full(track)).toList();
  }
}

extension FullAsSpotubeTrackObject on Iterable<SpotubeFullTrackObject> {
  List<SpotubeTrackObject> union() {
    return map((track) => SpotubeTrackObject.full(track)).toList();
  }
}

extension LocalAsPartialSpotubeTrackObject
    on Iterable<SpotubeLocalTrackObject>? {
  List<SpotubeTrackObject>? union() {
    return this?.map((track) => SpotubeTrackObject.local(track)).toList();
  }
}

extension LocalAsSpotubeTrackObject on Iterable<SpotubeLocalTrackObject> {
  List<SpotubeTrackObject> union() {
    return map((track) => SpotubeTrackObject.local(track)).toList();
  }
}

extension ToMetadataSpotubeFullTrackObject on SpotubeTrackObject {
  Metadata toMetadata({
    required int fileLength,
    Uint8List? imageBytes,
    String? mimeType,
  }) {
    return Metadata(
      title: name,
      artist: artists.map((a) => a.name).join(", "),
      album: album.name,
      albumArtist: artists.map((a) => a.name).join(", "),
      year: album.releaseDate == null
          ? 1970
          : DateTime.tryParse(album.releaseDate!)?.year ??
              int.tryParse(album.releaseDate!) ??
              1970,
      durationMs: durationMs.toDouble(),
      fileSize: BigInt.from(fileLength),
      picture: imageBytes != null
          ? Picture(
              data: imageBytes,
              mimeType: mimeType ??
                  lookupMimeType("", headerBytes: imageBytes) ??
                  "image/jpeg",
            )
          : null,
    );
  }
}

extension CommonTrackProperties on SpotubeTrackObject {
  String get id => when(
        full: (track) => track.id,
        local: (track) => track.id,
      );

  String get name => when(
        full: (track) => track.name,
        local: (track) => track.name,
      );

  String get externalUri => when(
        full: (track) => track.externalUri,
        local: (track) => track.externalUri,
      );

  int get durationMs => when(
        full: (track) => track.durationMs,
        local: (track) => track.durationMs,
      );

  SpotubeSimpleAlbumObject get album => when(
        full: (track) => track.album,
        local: (track) => track.album,
      );
  List<SpotubeSimpleArtistObject> get artists => when(
        full: (track) => track.artists,
        local: (track) => track.artists,
      );
}

SpotubeLocalTrackObject localTrackFromFile(
  File file, {
  Metadata? metadata,
  String? art,
}) {
  return SpotubeLocalTrackObject(
    typeName: "track_local",
    id: file.absolute.path,
    name: metadata?.title ?? basenameWithoutExtension(file.path),
    externalUri: "file://${file.absolute.path}",
    artists: metadata?.artist?.split(",").map((a) {
          return SpotubeSimpleArtistObject(
            typeName: "artist_simple",
            id: a.trim(),
            name: a.trim(),
            externalUri: "file://${file.absolute.path}",
          );
        }).toList() ??
        [
          SpotubeSimpleArtistObject(
            typeName: "artist_simple",
            id: "unknown",
            name: "Unknown Artist",
            externalUri: "file://${file.absolute.path}",
          ),
        ],
    album: SpotubeSimpleAlbumObject(
      typeName: "album_simple",
      albumType: SpotubeAlbumType.album,
      id: metadata?.album ?? "unknown",
      name: metadata?.album ?? "Unknown Album",
      externalUri: "file://${file.absolute.path}",
      artists: [
        SpotubeSimpleArtistObject(
          typeName: "artist_simple",
          id: metadata?.albumArtist ?? "unknown",
          name: metadata?.albumArtist ?? "Unknown Artist",
          externalUri: "file://${file.absolute.path}",
        ),
      ],
      releaseDate:
          metadata?.year != null ? "${metadata!.year}-01-01" : "1970-01-01",
      images: [
        if (art != null)
          SpotubeImageObject(
            typeName: "image",
            url: art,
            width: 300,
            height: 300,
          ),
      ],
    ),
    durationMs: metadata?.durationMs?.toInt() ?? 0,
    path: file.path,
  );
}
