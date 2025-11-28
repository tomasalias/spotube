// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeTrackObjectImpl _$$SpotubeTrackObjectImplFromJson(Map json) =>
    _$SpotubeTrackObjectImpl(
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
      durationMs: BigInt.parse(json['durationMs'] as String),
      isrc: json['isrc'] as String,
      explicit: json['explicit'] as bool,
    );

Map<String, dynamic> _$$SpotubeTrackObjectImplToJson(
        _$SpotubeTrackObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
      'durationMs': instance.durationMs.toString(),
      'isrc': instance.isrc,
      'explicit': instance.explicit,
    };
