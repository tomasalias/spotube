// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeUserObjectImpl _$$SpotubeUserObjectImplFromJson(Map json) =>
    _$SpotubeUserObjectImpl(
      typeName: json['typeName'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              SpotubeImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      externalUri: json['externalUri'] as String,
    );

Map<String, dynamic> _$$SpotubeUserObjectImplToJson(
        _$SpotubeUserObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'id': instance.id,
      'name': instance.name,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'externalUri': instance.externalUri,
    };
