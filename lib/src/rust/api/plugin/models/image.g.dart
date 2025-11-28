// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeImageObjectImpl _$$SpotubeImageObjectImplFromJson(Map json) =>
    _$SpotubeImageObjectImpl(
      typeName: json['typeName'] as String,
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SpotubeImageObjectImplToJson(
        _$SpotubeImageObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
