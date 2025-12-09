// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PluginConfigurationImpl _$$PluginConfigurationImplFromJson(Map json) =>
    _$PluginConfigurationImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      author: json['author'] as String,
      entryPoint: json['entryPoint'] as String,
      pluginApiVersion: json['pluginApiVersion'] as String,
      apis: (json['apis'] as List<dynamic>)
          .map((e) => $enumDecode(_$PluginApiEnumMap, e))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => $enumDecode(_$PluginAbilityEnumMap, e))
          .toList(),
      repository: json['repository'] as String?,
    );

Map<String, dynamic> _$$PluginConfigurationImplToJson(
        _$PluginConfigurationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'author': instance.author,
      'entryPoint': instance.entryPoint,
      'pluginApiVersion': instance.pluginApiVersion,
      'apis': instance.apis.map((e) => _$PluginApiEnumMap[e]!).toList(),
      'abilities':
          instance.abilities.map((e) => _$PluginAbilityEnumMap[e]!).toList(),
      'repository': instance.repository,
    };

const _$PluginApiEnumMap = {
  PluginApi.webview: 'webview',
  PluginApi.localstorage: 'localstorage',
  PluginApi.timezone: 'timezone',
};

const _$PluginAbilityEnumMap = {
  PluginAbility.authentication: 'authentication',
  PluginAbility.scrobbling: 'scrobbling',
  PluginAbility.metadata: 'metadata',
  PluginAbility.audioSource: 'audioSource',
};

_$PluginUpdateAvailableImpl _$$PluginUpdateAvailableImplFromJson(Map json) =>
    _$PluginUpdateAvailableImpl(
      downloadUrl: json['downloadUrl'] as String,
      version: json['version'] as String,
      changelog: json['changelog'] as String?,
    );

Map<String, dynamic> _$$PluginUpdateAvailableImplToJson(
        _$PluginUpdateAvailableImpl instance) =>
    <String, dynamic>{
      'downloadUrl': instance.downloadUrl,
      'version': instance.version,
      'changelog': instance.changelog,
    };

_$ScrobbleAlbumImpl _$$ScrobbleAlbumImplFromJson(Map json) =>
    _$ScrobbleAlbumImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ScrobbleAlbumImplToJson(_$ScrobbleAlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ScrobbleArtistImpl _$$ScrobbleArtistImplFromJson(Map json) =>
    _$ScrobbleArtistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ScrobbleArtistImplToJson(
        _$ScrobbleArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ScrobbleDetailsImpl _$$ScrobbleDetailsImplFromJson(Map json) =>
    _$ScrobbleDetailsImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) =>
              ScrobbleArtist.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      album: ScrobbleAlbum.fromJson(
          Map<String, dynamic>.from(json['album'] as Map)),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      durationMs: (json['durationMs'] as num?)?.toInt(),
      isrc: json['isrc'] as String?,
    );

Map<String, dynamic> _$$ScrobbleDetailsImplToJson(
        _$ScrobbleDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
      'timestamp': instance.timestamp,
      'durationMs': instance.durationMs,
      'isrc': instance.isrc,
    };
