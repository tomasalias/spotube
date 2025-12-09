import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:spotube/services/logger/logger.dart';

class MetadataPluginScrobbleNotifier
    extends Notifier<StreamController<SpotubeTrackObject>?> {
  @override
  build() {
    final metadataPlugin = ref.watch(metadataPluginProvider);
    final pluginConfig = ref
        .watch(metadataPluginsProvider)
        .valueOrNull
        ?.defaultMetadataPluginConfig;

    if (metadataPlugin.valueOrNull == null ||
        pluginConfig == null ||
        !pluginConfig.abilities.contains(PluginAbility.scrobbling)) {
      return null;
    }

    final controller = StreamController<SpotubeTrackObject>.broadcast();

    final subscription = controller.stream.listen((event) async {
      try {
        final details = switch (event) {
          SpotubeTrackObject_Full(:final field0) => ScrobbleDetails(
              id: field0.id,
              title: field0.name,
              artists: field0.artists
                  .map((artist) => ScrobbleArtist(
                        id: artist.id,
                        name: artist.name,
                      ))
                  .toList(),
              album: ScrobbleAlbum(
                id: field0.album.id,
                name: field0.album.name,
              ),
              timestamp: DateTime.now().millisecondsSinceEpoch,
              durationMs: field0.durationMs,
              isrc: field0.isrc,
            ),
          SpotubeTrackObject_Local(:final field0) => ScrobbleDetails(
              id: field0.id,
              title: field0.name,
              artists: field0.artists
                  .map((artist) => ScrobbleArtist(
                        id: artist.id,
                        name: artist.name,
                      ))
                  .toList(),
              album: ScrobbleAlbum(
                id: field0.album.id,
                name: field0.album.name,
              ),
              timestamp: DateTime.now().millisecondsSinceEpoch,
              durationMs: field0.durationMs,
            ),
        };

        await metadataPlugin.valueOrNull?.core.scrobble(
          mpscTx: metadataPlugin.valueOrNull!.sender,
          details: details,
        );
      } catch (e, stack) {
        AppLogger.reportError(e, stack);
      }
    });

    ref.onDispose(() {
      subscription.cancel();
      controller.close();
    });

    return controller;
  }

  void scrobble(SpotubeTrackObject track) {
    state?.add(track);
  }
}

final metadataPluginScrobbleProvider = NotifierProvider<
    MetadataPluginScrobbleNotifier, StreamController<SpotubeTrackObject>?>(
  MetadataPluginScrobbleNotifier.new,
);
