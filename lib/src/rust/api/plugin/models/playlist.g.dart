// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeFullPlaylistObjectImpl _$$SpotubeFullPlaylistObjectImplFromJson(
        Map json) =>
    _$SpotubeFullPlaylistObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      externalUri: json['externalUri'] as String,
      owner: SpotubeUserObject.fromJson(
          Map<String, dynamic>.from(json['owner'] as Map)),
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      collaborators: (json['collaborators'] as List<dynamic>)
          .map((e) =>
              SpotubeUserObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      collaborative: json['collaborative'] as bool,
      public: json['public'] as bool,
    );

Map<String, dynamic> _$$SpotubeFullPlaylistObjectImplToJson(
        _$SpotubeFullPlaylistObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'externalUri': instance.externalUri,
      'owner': instance.owner.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'collaborators': instance.collaborators.map((e) => e.toJson()).toList(),
      'collaborative': instance.collaborative,
      'public': instance.public,
    };

_$SpotubeSimplePlaylistObjectImpl _$$SpotubeSimplePlaylistObjectImplFromJson(
        Map json) =>
    _$SpotubeSimplePlaylistObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      externalUri: json['externalUri'] as String,
      owner: SpotubeUserObject.fromJson(
          Map<String, dynamic>.from(json['owner'] as Map)),
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$SpotubeSimplePlaylistObjectImplToJson(
        _$SpotubeSimplePlaylistObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'externalUri': instance.externalUri,
      'owner': instance.owner.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
    };
