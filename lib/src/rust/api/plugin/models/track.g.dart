// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeFullTrackObjectImpl _$$SpotubeFullTrackObjectImplFromJson(Map json) =>
    _$SpotubeFullTrackObjectImpl(
      typeName: json['typeName'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotubeSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      album: SpotubeSimpleAlbumObject.fromJson(
          Map<String, dynamic>.from(json['album'] as Map)),
      durationMs: (json['durationMs'] as num).toInt(),
      isrc: json['isrc'] as String,
      explicit: json['explicit'] as bool,
    );

Map<String, dynamic> _$$SpotubeFullTrackObjectImplToJson(
        _$SpotubeFullTrackObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
      'durationMs': instance.durationMs,
      'isrc': instance.isrc,
      'explicit': instance.explicit,
    };

_$SpotubeLocalTrackObjectImpl _$$SpotubeLocalTrackObjectImplFromJson(
        Map json) =>
    _$SpotubeLocalTrackObjectImpl(
      typeName: json['typeName'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotubeSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      album: SpotubeSimpleAlbumObject.fromJson(
          Map<String, dynamic>.from(json['album'] as Map)),
      durationMs: (json['durationMs'] as num).toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$$SpotubeLocalTrackObjectImplToJson(
        _$SpotubeLocalTrackObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
      'durationMs': instance.durationMs,
      'path': instance.path,
    };

_$SpotubeTrackObject_FullImpl _$$SpotubeTrackObject_FullImplFromJson(
        Map json) =>
    _$SpotubeTrackObject_FullImpl(
      SpotubeFullTrackObject.fromJson(
          Map<String, dynamic>.from(json['field0'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SpotubeTrackObject_FullImplToJson(
        _$SpotubeTrackObject_FullImpl instance) =>
    <String, dynamic>{
      'field0': instance.field0.toJson(),
      'runtimeType': instance.$type,
    };

_$SpotubeTrackObject_LocalImpl _$$SpotubeTrackObject_LocalImplFromJson(
        Map json) =>
    _$SpotubeTrackObject_LocalImpl(
      SpotubeLocalTrackObject.fromJson(
          Map<String, dynamic>.from(json['field0'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SpotubeTrackObject_LocalImplToJson(
        _$SpotubeTrackObject_LocalImpl instance) =>
    <String, dynamic>{
      'field0': instance.field0.toJson(),
      'runtimeType': instance.$type,
    };
