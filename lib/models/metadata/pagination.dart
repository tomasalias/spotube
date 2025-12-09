part of 'metadata.dart';

class SpotubeFlattenedPaginationObject<T> {
  final int limit;
  final int? nextOffset;
  final int total;
  final bool hasMore;
  final List<T> items;

  SpotubeFlattenedPaginationObject({
    required this.limit,
    required this.nextOffset,
    required this.total,
    required this.hasMore,
    required this.items,
  });

  static SpotubeFlattenedPaginationObject<T> from<T>(
    SpotubePaginationResponseObject response,
    T Function(SpotubePaginationResponseObjectItem item) parse,
  ) {
    return SpotubeFlattenedPaginationObject<T>(
      limit: response.limit,
      nextOffset: response.nextOffset,
      total: response.total,
      hasMore: response.hasMore,
      items: response.items.map((item) => parse(item)).toList(growable: false),
    );
  }

  SpotubeFlattenedPaginationObject<T> copyWith({
    int? limit,
    int? nextOffset,
    int? total,
    bool? hasMore,
    List<T>? items,
  }) {
    return SpotubeFlattenedPaginationObject<T>(
      limit: limit ?? this.limit,
      nextOffset: nextOffset ?? this.nextOffset,
      total: total ?? this.total,
      hasMore: hasMore ?? this.hasMore,
      items: items ?? this.items,
    );
  }
}

extension SpotubePaginationResponseObjectExtension
    on SpotubePaginationResponseObject {
  SpotubeFlattenedPaginationObject<T> flatten<T>() {
    return SpotubeFlattenedPaginationObject.from<T>(
      this,
      (item) => switch (T) {
        SpotubeSimpleAlbumObject() =>
          (item as SpotubePaginationResponseObjectItem_AlbumSimple).field0 as T,
        SpotubeFullAlbumObject() =>
          (item as SpotubePaginationResponseObjectItem_AlbumFull).field0 as T,
        SpotubeSimpleArtistObject() =>
          (item as SpotubePaginationResponseObjectItem_ArtistSimple).field0
              as T,
        SpotubeFullArtistObject() =>
          (item as SpotubePaginationResponseObjectItem_ArtistFull).field0 as T,
        SpotubeTrackObject() =>
          (item as SpotubePaginationResponseObjectItem_Track).field0 as T,
        SpotubeSimplePlaylistObject() =>
          (item as SpotubePaginationResponseObjectItem_PlaylistSimple).field0
              as T,
        SpotubeFullPlaylistObject() =>
          (item as SpotubePaginationResponseObjectItem_PlaylistFull).field0
              as T,
        SpotubeBrowseSectionObject() =>
          (item as SpotubePaginationResponseObjectItem_BrowseSection).field0
              as T,
        _ => throw Exception("Unsupported type: $T"),
      },
    );
  }
}
