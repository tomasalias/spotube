// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeFullArtistObjectImpl _$$SpotubeFullArtistObjectImplFromJson(
        Map json) =>
    _$SpotubeFullArtistObjectImpl(
      typeName: json['typeName'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      followers: (json['followers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SpotubeFullArtistObjectImplToJson(
        _$SpotubeFullArtistObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'genres': instance.genres,
      'followers': instance.followers,
    };

_$SpotubeSimpleArtistObjectImpl _$$SpotubeSimpleArtistObjectImplFromJson(
        Map json) =>
    _$SpotubeSimpleArtistObjectImpl(
      typeName: json['typeName'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$SpotubeSimpleArtistObjectImplToJson(
        _$SpotubeSimpleArtistObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'images': instance.images?.map((e) => e.toJson()).toList(),
    };
