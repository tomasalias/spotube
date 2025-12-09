import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginArtistAlbumNotifier
    extends FamilyPaginatedAsyncNotifier<SpotubeSimpleAlbumObject, String> {
  @override
  Future<SpotubeFlattenedPaginationObject<SpotubeSimpleAlbumObject>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin)
        .artist
        .albums(
          mpscTx: await mpscTx,
          id: arg,
          limit: limit,
          offset: offset,
        )
        .then((a) => a.flatten());
  }

  @override
  build(arg) async {
    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginArtistAlbumsProvider = AsyncNotifierProviderFamily<
    MetadataPluginArtistAlbumNotifier,
    SpotubeFlattenedPaginationObject<SpotubeSimpleAlbumObject>,
    String>(
  () => MetadataPluginArtistAlbumNotifier(),
);
