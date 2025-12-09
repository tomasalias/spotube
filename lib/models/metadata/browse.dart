part of 'metadata.dart';

class SpotubeFlattenedBrowseSectionObject<T> {
  final String id;
  final String title;
  final String externalUri;
  final bool browseMore;
  final List<T> items;

  SpotubeFlattenedBrowseSectionObject({
    required this.id,
    required this.title,
    required this.browseMore,
    required this.externalUri,
    required this.items,
  });

  static SpotubeFlattenedBrowseSectionObject<T> from<T>(
    SpotubeBrowseSectionObject browseSection,
    T Function(SpotubeBrowseSectionResponseObjectItem item) parse,
  ) {
    return SpotubeFlattenedBrowseSectionObject<T>(
      browseMore: browseSection.browseMore,
      id: browseSection.id,
      title: browseSection.title,
      externalUri: browseSection.externalUri,
      items: browseSection.items
          .map((item) => parse(item))
          .toList(growable: false),
    );
  }

  SpotubeFlattenedBrowseSectionObject<T> copyWith({
    String? id,
    String? title,
    String? externalUri,
    bool? browseMore,
    List<T>? items,
  }) {
    return SpotubeFlattenedBrowseSectionObject<T>(
      id: id ?? this.id,
      title: title ?? this.title,
      externalUri: externalUri ?? this.externalUri,
      browseMore: browseMore ?? this.browseMore,
      items: items ?? this.items,
    );
  }
}

extension SpotubeBrowseSectionObjectExtension on SpotubeBrowseSectionObject {
  SpotubeFlattenedBrowseSectionObject<T> flatten<T>() {
    return SpotubeFlattenedBrowseSectionObject.from<T>(
      this,
      (item) => switch (T) {
        SpotubeSimpleAlbumObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_AlbumSimple).field0
              as T,
        SpotubeFullAlbumObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_AlbumFull).field0
              as T,
        SpotubeSimpleArtistObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_ArtistSimple).field0
              as T,
        SpotubeFullArtistObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_ArtistFull).field0
              as T,
        SpotubeTrackObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_Track).field0 as T,
        SpotubeSimplePlaylistObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_PlaylistSimple).field0
              as T,
        SpotubeFullPlaylistObject() =>
          (item as SpotubeBrowseSectionResponseObjectItem_PlaylistFull).field0
              as T,
        _ => throw Exception("Unsupported type: $T"),
      },
    );
  }
}
