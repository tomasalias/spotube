import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/core/auth.dart';
import 'package:spotube/provider/metadata_plugin/utils/paginated.dart';

class MetadataPluginBrowseSectionsNotifier
    extends PaginatedAsyncNotifier<SpotubeBrowseSectionObject> {
  @override
  Future<SpotubeFlattenedPaginationObject<SpotubeBrowseSectionObject>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin)
        .browse
        .sections(
          limit: limit,
          offset: offset,
          mpscTx: await mpscTx,
        )
        .then((value) => value.flatten());
  }

  @override
  build() async {
    ref.watch(metadataPluginAuthenticatedProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginBrowseSectionsProvider = AsyncNotifierProvider<
    MetadataPluginBrowseSectionsNotifier,
    SpotubeFlattenedPaginationObject<SpotubeBrowseSectionObject>>(
  () => MetadataPluginBrowseSectionsNotifier(),
);
