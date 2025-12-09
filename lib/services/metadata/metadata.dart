import 'package:spotube/src/rust/api/plugin/models/auth.dart';
import 'package:spotube/src/rust/api/plugin/models/core.dart';
import 'package:spotube/src/rust/api/plugin/plugin.dart';
import 'package:spotube/src/rust/api/plugin/senders.dart';

class MetadataPlugin {
  final SpotubePlugin plugin;
  late final OpaqueSender sender;

  MetadataPlugin({
    required String pluginScript,
    required PluginConfiguration pluginConfig,
    required String serverEndpointUrl,
    required String serverSecret,
  }) : plugin = SpotubePlugin() {
    sender = plugin.createContext(
      pluginScript: pluginScript,
      pluginConfig: pluginConfig,
      serverEndpointUrl: serverEndpointUrl,
      serverSecret: serverSecret,
    );
  }

  Stream<AuthEventObject> authState() => plugin.authState();

  PluginAlbumSender get album => plugin.album;
  PluginArtistSender get artist => plugin.artist;
  PluginAudioSourceSender get audioSource => plugin.audioSource;
  PluginAuthSender get auth => plugin.auth;
  PluginBrowseSender get browse => plugin.browse;
  PluginCoreSender get core => plugin.core;
  PluginPlaylistSender get playlist => plugin.playlist;
  PluginSearchSender get search => plugin.search;
  PluginTrackSender get track => plugin.track;
  PluginUserSender get user => plugin.user;

  Future<void> close() => plugin.close(tx: sender);
}
