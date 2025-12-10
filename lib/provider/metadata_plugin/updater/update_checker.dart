import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/provider/metadata_plugin/metadata_plugin_provider.dart';

final metadataPluginUpdateCheckerProvider =
    FutureProvider<PluginUpdateAvailable?>((ref) async {
  try {
    final metadataPluginConfigs =
        await ref.watch(metadataPluginsProvider.future);
    final metadataPlugin = await ref.watch(metadataPluginProvider.future);

    if (metadataPlugin == null ||
        metadataPluginConfigs.defaultMetadataPluginConfig == null) {
      return null;
    }

    final res = await metadataPlugin.core.checkUpdate(
      pluginConfig: metadataPluginConfigs.defaultMetadataPluginConfig!,
      mpscTx: metadataPlugin.sender,
    );

    return res;
  } catch (e) {
    debugPrint('Error checking metadata plugin update: $e');
    rethrow;
  }
});

final audioSourcePluginUpdateCheckerProvider =
    FutureProvider<PluginUpdateAvailable?>((ref) async {
  try {
    final audioSourcePluginConfigs =
        await ref.watch(metadataPluginsProvider.future);
    final audioSourcePlugin = await ref.watch(audioSourcePluginProvider.future);

    if (audioSourcePlugin == null ||
        audioSourcePluginConfigs.defaultAudioSourcePluginConfig == null) {
      return null;
    }

    final res = await audioSourcePlugin.core.checkUpdate(
      pluginConfig: audioSourcePluginConfigs.defaultAudioSourcePluginConfig!,
      mpscTx: audioSourcePlugin.sender,
    );

    return res;
  } catch (e) {
    debugPrint('Error checking audio source plugin update: $e');
    rethrow;
  }
});
