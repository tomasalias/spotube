// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeAudioLosslessContainerQualityImpl
    _$$SpotubeAudioLosslessContainerQualityImplFromJson(Map json) =>
        _$SpotubeAudioLosslessContainerQualityImpl(
          bitDepth: (json['bitDepth'] as num).toInt(),
          sampleRate: (json['sampleRate'] as num).toInt(),
        );

Map<String, dynamic> _$$SpotubeAudioLosslessContainerQualityImplToJson(
        _$SpotubeAudioLosslessContainerQualityImpl instance) =>
    <String, dynamic>{
      'bitDepth': instance.bitDepth,
      'sampleRate': instance.sampleRate,
    };

_$SpotubeAudioLossyContainerQualityImpl
    _$$SpotubeAudioLossyContainerQualityImplFromJson(Map json) =>
        _$SpotubeAudioLossyContainerQualityImpl(
          bitrate: (json['bitrate'] as num).toInt(),
        );

Map<String, dynamic> _$$SpotubeAudioLossyContainerQualityImplToJson(
        _$SpotubeAudioLossyContainerQualityImpl instance) =>
    <String, dynamic>{
      'bitrate': instance.bitrate,
    };

_$SpotubeAudioSourceContainerPreset_LossyImpl
    _$$SpotubeAudioSourceContainerPreset_LossyImplFromJson(Map json) =>
        _$SpotubeAudioSourceContainerPreset_LossyImpl(
          compressionType: $enumDecode(
              _$SpotubeMediaCompressionTypeEnumMap, json['compressionType']),
          name: json['name'] as String,
          qualities: (json['qualities'] as List<dynamic>)
              .map((e) => SpotubeAudioLossyContainerQuality.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SpotubeAudioSourceContainerPreset_LossyImplToJson(
        _$SpotubeAudioSourceContainerPreset_LossyImpl instance) =>
    <String, dynamic>{
      'compressionType':
          _$SpotubeMediaCompressionTypeEnumMap[instance.compressionType]!,
      'name': instance.name,
      'qualities': instance.qualities.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

const _$SpotubeMediaCompressionTypeEnumMap = {
  SpotubeMediaCompressionType.lossy: 'lossy',
  SpotubeMediaCompressionType.lossless: 'lossless',
};

_$SpotubeAudioSourceContainerPreset_LosslessImpl
    _$$SpotubeAudioSourceContainerPreset_LosslessImplFromJson(Map json) =>
        _$SpotubeAudioSourceContainerPreset_LosslessImpl(
          compressionType: $enumDecode(
              _$SpotubeMediaCompressionTypeEnumMap, json['compressionType']),
          name: json['name'] as String,
          qualities: (json['qualities'] as List<dynamic>)
              .map((e) => SpotubeAudioLosslessContainerQuality.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SpotubeAudioSourceContainerPreset_LosslessImplToJson(
        _$SpotubeAudioSourceContainerPreset_LosslessImpl instance) =>
    <String, dynamic>{
      'compressionType':
          _$SpotubeMediaCompressionTypeEnumMap[instance.compressionType]!,
      'name': instance.name,
      'qualities': instance.qualities.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$SpotubeAudioSourceMatchObjectImpl
    _$$SpotubeAudioSourceMatchObjectImplFromJson(Map json) =>
        _$SpotubeAudioSourceMatchObjectImpl(
          id: json['id'] as String,
          title: json['title'] as String,
          artists: (json['artists'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          duration: (json['duration'] as num).toInt(),
          thumbnail: json['thumbnail'] as String?,
          externalUri: json['externalUri'] as String,
        );

Map<String, dynamic> _$$SpotubeAudioSourceMatchObjectImplToJson(
        _$SpotubeAudioSourceMatchObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artists': instance.artists,
      'duration': instance.duration,
      'thumbnail': instance.thumbnail,
      'externalUri': instance.externalUri,
    };

_$SpotubeAudioSourceStreamObjectImpl
    _$$SpotubeAudioSourceStreamObjectImplFromJson(Map json) =>
        _$SpotubeAudioSourceStreamObjectImpl(
          typeName: json['typeName'] as String,
          url: json['url'] as String,
          container: json['container'] as String,
          compressionType: $enumDecode(
              _$SpotubeMediaCompressionTypeEnumMap, json['compressionType']),
          codec: json['codec'] as String?,
          bitrate: (json['bitrate'] as num?)?.toDouble(),
          bitDepth: (json['bitDepth'] as num?)?.toInt(),
          sampleRate: (json['sampleRate'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$SpotubeAudioSourceStreamObjectImplToJson(
        _$SpotubeAudioSourceStreamObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'url': instance.url,
      'container': instance.container,
      'compressionType':
          _$SpotubeMediaCompressionTypeEnumMap[instance.compressionType]!,
      'codec': instance.codec,
      'bitrate': instance.bitrate,
      'bitDepth': instance.bitDepth,
      'sampleRate': instance.sampleRate,
    };
