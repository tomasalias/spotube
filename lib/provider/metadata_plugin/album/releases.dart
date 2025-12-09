import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/core/auth.dart';
import 'package:spotube/provider/metadata_plugin/utils/paginated.dart';

class MetadataPluginAlbumReleasesNotifier
    extends PaginatedAsyncNotifier<SpotubeSimpleAlbumObject> {
  @override
  Future<SpotubeFlattenedPaginationObject<SpotubeSimpleAlbumObject>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin)
        .album
        .releases(mpscTx: await mpscTx, limit: limit, offset: offset)
        .then((a) => a.flatten());
  }

  @override
  build() async {
    ref.watch(metadataPluginAuthenticatedProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginAlbumReleasesProvider = AsyncNotifierProvider<
    MetadataPluginAlbumReleasesNotifier,
    SpotubeFlattenedPaginationObject<SpotubeSimpleAlbumObject>>(
  () => MetadataPluginAlbumReleasesNotifier(),
);
