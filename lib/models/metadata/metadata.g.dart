// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetadataFormFieldInputObjectImpl _$$MetadataFormFieldInputObjectImplFromJson(
        Map json) =>
    _$MetadataFormFieldInputObjectImpl(
      objectType: json['objectType'] as String,
      id: json['id'] as String,
      variant:
          $enumDecodeNullable(_$FormFieldVariantEnumMap, json['variant']) ??
              FormFieldVariant.text,
      placeholder: json['placeholder'] as String?,
      defaultValue: json['defaultValue'] as String?,
      required: json['required'] as bool?,
      regex: json['regex'] as String?,
    );

Map<String, dynamic> _$$MetadataFormFieldInputObjectImplToJson(
        _$MetadataFormFieldInputObjectImpl instance) =>
    <String, dynamic>{
      'objectType': instance.objectType,
      'id': instance.id,
      'variant': _$FormFieldVariantEnumMap[instance.variant]!,
      'placeholder': instance.placeholder,
      'defaultValue': instance.defaultValue,
      'required': instance.required,
      'regex': instance.regex,
    };

const _$FormFieldVariantEnumMap = {
  FormFieldVariant.text: 'text',
  FormFieldVariant.password: 'password',
  FormFieldVariant.number: 'number',
};

_$MetadataFormFieldTextObjectImpl _$$MetadataFormFieldTextObjectImplFromJson(
        Map json) =>
    _$MetadataFormFieldTextObjectImpl(
      objectType: json['objectType'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$MetadataFormFieldTextObjectImplToJson(
        _$MetadataFormFieldTextObjectImpl instance) =>
    <String, dynamic>{
      'objectType': instance.objectType,
      'text': instance.text,
    };

_$MetadataPluginRepositoryImpl _$$MetadataPluginRepositoryImplFromJson(
        Map json) =>
    _$MetadataPluginRepositoryImpl(
      name: json['name'] as String,
      owner: json['owner'] as String,
      description: json['description'] as String,
      repoUrl: json['repoUrl'] as String,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MetadataPluginRepositoryImplToJson(
        _$MetadataPluginRepositoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'description': instance.description,
      'repoUrl': instance.repoUrl,
      'topics': instance.topics,
    };
