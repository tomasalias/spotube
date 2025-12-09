import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/common.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginSearchPlaylistsNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<SpotubeSimplePlaylistObject,
        String> {
  MetadataPluginSearchPlaylistsNotifier() : super();

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return SpotubeFlattenedPaginationObject<SpotubeSimplePlaylistObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    final res = await (await metadataPlugin).search.playlists(
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

final metadataPluginSearchPlaylistsProvider =
    AutoDisposeAsyncNotifierProviderFamily<
        MetadataPluginSearchPlaylistsNotifier,
        SpotubeFlattenedPaginationObject<SpotubeSimplePlaylistObject>,
        String>(
  () => MetadataPluginSearchPlaylistsNotifier(),
);
