import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/core/auth.dart';
import 'package:spotube/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginBrowseSectionItemsNotifier
    extends FamilyPaginatedAsyncNotifier<Object, String> {
  @override
  Future<SpotubeFlattenedPaginationObject<Object>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin)
        .browse
        .sectionItems(
          id: arg,
          limit: limit,
          offset: offset,
          mpscTx: await mpscTx,
        )
        .then((value) => value.flatten());
  }

  @override
  build(arg) async {
    ref.watch(metadataPluginAuthenticatedProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginBrowseSectionItemsProvider = AsyncNotifierProviderFamily<
    MetadataPluginBrowseSectionItemsNotifier,
    SpotubeFlattenedPaginationObject<Object>,
    String>(
  () => MetadataPluginBrowseSectionItemsNotifier(),
);
