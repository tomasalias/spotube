import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';

class MetadataPluginAuthenticatedNotifier extends AsyncNotifier<bool> {
  @override
  FutureOr<bool> build() async {
    final defaultPluginConfig = ref.watch(metadataPluginsProvider);
    if (defaultPluginConfig.asData?.value.defaultMetadataPluginConfig?.abilities
            .contains(PluginAbility.authentication) !=
        true) {
      return false;
    }

    final defaultPlugin = await ref.watch(metadataPluginProvider.future);
    if (defaultPlugin == null) {
      return false;
    }

    /// `authState` can be called once in the SpotubePlugin's lifetime.
    final sub = defaultPlugin.authState().listen((event) async {
      state = AsyncData(
        await defaultPlugin.auth.isAuthenticated(mpscTx: defaultPlugin.sender),
      );
    });

    ref.onDispose(() {
      sub.cancel();
    });

    return await defaultPlugin.auth
        .isAuthenticated(mpscTx: defaultPlugin.sender);
  }
}

final metadataPluginAuthenticatedProvider =
    AsyncNotifierProvider<MetadataPluginAuthenticatedNotifier, bool>(
  MetadataPluginAuthenticatedNotifier.new,
);

class AudioSourcePluginAuthenticatedNotifier extends AsyncNotifier<bool> {
  @override
  FutureOr<bool> build() async {
    final defaultPluginConfig = ref.watch(metadataPluginsProvider);
    if (defaultPluginConfig
            .asData?.value.defaultAudioSourcePluginConfig?.abilities
            .contains(PluginAbility.authentication) !=
        true) {
      return false;
    }

    final defaultPlugin = await ref.watch(audioSourcePluginProvider.future);
    if (defaultPlugin == null) {
      return false;
    }

    final sub = defaultPlugin.authState().listen((event) async {
      state = AsyncData(await defaultPlugin.auth
          .isAuthenticated(mpscTx: defaultPlugin.sender));
    });

    ref.onDispose(() {
      sub.cancel();
    });

    return defaultPlugin.auth.isAuthenticated(mpscTx: defaultPlugin.sender);
  }
}

final audioSourcePluginAuthenticatedProvider =
    AsyncNotifierProvider<AudioSourcePluginAuthenticatedNotifier, bool>(
  AudioSourcePluginAuthenticatedNotifier.new,
);
