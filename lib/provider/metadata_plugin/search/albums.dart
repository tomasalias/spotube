import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/common.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginSearchAlbumsNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<SpotubeSimpleAlbumObject,
        String> {
  MetadataPluginSearchAlbumsNotifier() : super();

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return SpotubeFlattenedPaginationObject<SpotubeSimpleAlbumObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    final res = await (await metadataPlugin).search.albums(
          query: arg,
          offset: offset,
          limit: limit,
          mpscTx: await mpscTx,
        );

    return res.flatten();
  }

  @override
  build(arg) async {
    ref.cacheFor();

    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginSearchAlbumsProvider =
    AutoDisposeAsyncNotifierProviderFamily<MetadataPluginSearchAlbumsNotifier,
        SpotubeFlattenedPaginationObject<SpotubeSimpleAlbumObject>, String>(
  () => MetadataPluginSearchAlbumsNotifier(),
);
