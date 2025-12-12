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
      (item) => item.field0 as T,
    );
  }
}
