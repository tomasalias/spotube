// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeFullAlbumObjectImpl _$$SpotubeFullAlbumObjectImplFromJson(Map json) =>
    _$SpotubeFullAlbumObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotubeSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      releaseDate: json['releaseDate'] as String,
      externalUri: json['externalUri'] as String,
      totalTracks: (json['totalTracks'] as num).toInt(),
      albumType: $enumDecode(_$SpotubeAlbumTypeEnumMap, json['albumType']),
      recordLabel: json['recordLabel'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SpotubeFullAlbumObjectImplToJson(
        _$SpotubeFullAlbumObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'releaseDate': instance.releaseDate,
      'externalUri': instance.externalUri,
      'totalTracks': instance.totalTracks,
      'albumType': _$SpotubeAlbumTypeEnumMap[instance.albumType]!,
      'recordLabel': instance.recordLabel,
      'genres': instance.genres,
    };

const _$SpotubeAlbumTypeEnumMap = {
  SpotubeAlbumType.album: 'album',
  SpotubeAlbumType.single: 'single',
  SpotubeAlbumType.compilation: 'compilation',
};

_$SpotubeSimpleAlbumObjectImpl _$$SpotubeSimpleAlbumObjectImplFromJson(
        Map json) =>
    _$SpotubeSimpleAlbumObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotubeSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      albumType: $enumDecode(_$SpotubeAlbumTypeEnumMap, json['albumType']),
      releaseDate: json['releaseDate'] as String?,
    );

Map<String, dynamic> _$$SpotubeSimpleAlbumObjectImplToJson(
        _$SpotubeSimpleAlbumObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'albumType': _$SpotubeAlbumTypeEnumMap[instance.albumType]!,
      'releaseDate': instance.releaseDate,
    };
