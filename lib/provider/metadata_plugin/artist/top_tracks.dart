import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';
import 'package:spotube/provider/metadata_plugin/utils/common.dart';

class MetadataPluginArtistTopTracksNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<SpotubeTrackObject,
        String> {
  MetadataPluginArtistTopTracksNotifier() : super();

  @override
  fetch(offset, limit) async {
    final tracks = await (await metadataPlugin).artist.topTracks(
          id: arg,
          offset: offset,
          limit: limit,
          mpscTx: await mpscTx,
        );

    return SpotubeFlattenedPaginationObject.from(
      tracks,
      (item) => SpotubeTrackObject.full(item.field0 as SpotubeFullTrackObject),
    );
  }

  @override
  build(arg) async {
    ref.cacheFor();

    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginArtistTopTracksProvider =
    AutoDisposeAsyncNotifierProviderFamily<
        MetadataPluginArtistTopTracksNotifier,
        SpotubeFlattenedPaginationObject<SpotubeTrackObject>,
        String>(
  () => MetadataPluginArtistTopTracksNotifier(),
);
