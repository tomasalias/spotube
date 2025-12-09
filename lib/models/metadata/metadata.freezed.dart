// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetadataFormFieldObject _$MetadataFormFieldObjectFromJson(
    Map<String, dynamic> json) {
  switch (json['objectType']) {
    case 'input':
      return MetadataFormFieldInputObject.fromJson(json);
    case 'text':
      return MetadataFormFieldTextObject.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'objectType',
          'MetadataFormFieldObject',
          'Invalid union type "${json['objectType']}"!');
  }
}

/// @nodoc
mixin _$MetadataFormFieldObject {
  String get objectType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)
        input,
    required TResult Function(String objectType, String text) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult? Function(String objectType, String text)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult Function(String objectType, String text)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MetadataFormFieldInputObject value) input,
    required TResult Function(MetadataFormFieldTextObject value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MetadataFormFieldInputObject value)? input,
    TResult? Function(MetadataFormFieldTextObject value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MetadataFormFieldInputObject value)? input,
    TResult Function(MetadataFormFieldTextObject value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MetadataFormFieldObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataFormFieldObjectCopyWith<MetadataFormFieldObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataFormFieldObjectCopyWith<$Res> {
  factory $MetadataFormFieldObjectCopyWith(MetadataFormFieldObject value,
          $Res Function(MetadataFormFieldObject) then) =
      _$MetadataFormFieldObjectCopyWithImpl<$Res, MetadataFormFieldObject>;
  @useResult
  $Res call({String objectType});
}

/// @nodoc
class _$MetadataFormFieldObjectCopyWithImpl<$Res,
        $Val extends MetadataFormFieldObject>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  _$MetadataFormFieldObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectType = null,
  }) {
    return _then(_value.copyWith(
      objectType: null == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataFormFieldInputObjectImplCopyWith<$Res>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  factory _$$MetadataFormFieldInputObjectImplCopyWith(
          _$MetadataFormFieldInputObjectImpl value,
          $Res Function(_$MetadataFormFieldInputObjectImpl) then) =
      __$$MetadataFormFieldInputObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectType,
      String id,
      FormFieldVariant variant,
      String? placeholder,
      String? defaultValue,
      bool? required,
      String? regex});
}

/// @nodoc
class __$$MetadataFormFieldInputObjectImplCopyWithImpl<$Res>
    extends _$MetadataFormFieldObjectCopyWithImpl<$Res,
        _$MetadataFormFieldInputObjectImpl>
    implements _$$MetadataFormFieldInputObjectImplCopyWith<$Res> {
  __$$MetadataFormFieldInputObjectImplCopyWithImpl(
      _$MetadataFormFieldInputObjectImpl _value,
      $Res Function(_$MetadataFormFieldInputObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectType = null,
    Object? id = null,
    Object? variant = null,
    Object? placeholder = freezed,
    Object? defaultValue = freezed,
    Object? required = freezed,
    Object? regex = freezed,
  }) {
    return _then(_$MetadataFormFieldInputObjectImpl(
      objectType: null == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FormFieldVariant,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      regex: freezed == regex
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataFormFieldInputObjectImpl
    implements MetadataFormFieldInputObject {
  _$MetadataFormFieldInputObjectImpl(
      {required this.objectType,
      required this.id,
      this.variant = FormFieldVariant.text,
      this.placeholder,
      this.defaultValue,
      this.required,
      this.regex});

  factory _$MetadataFormFieldInputObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MetadataFormFieldInputObjectImplFromJson(json);

  @override
  final String objectType;
  @override
  final String id;
  @override
  @JsonKey()
  final FormFieldVariant variant;
  @override
  final String? placeholder;
  @override
  final String? defaultValue;
  @override
  final bool? required;
  @override
  final String? regex;

  @override
  String toString() {
    return 'MetadataFormFieldObject.input(objectType: $objectType, id: $id, variant: $variant, placeholder: $placeholder, defaultValue: $defaultValue, required: $required, regex: $regex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataFormFieldInputObjectImpl &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.regex, regex) || other.regex == regex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectType, id, variant,
      placeholder, defaultValue, required, regex);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataFormFieldInputObjectImplCopyWith<
          _$MetadataFormFieldInputObjectImpl>
      get copyWith => __$$MetadataFormFieldInputObjectImplCopyWithImpl<
          _$MetadataFormFieldInputObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)
        input,
    required TResult Function(String objectType, String text) text,
  }) {
    return input(
        objectType, id, variant, placeholder, defaultValue, required, regex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult? Function(String objectType, String text)? text,
  }) {
    return input?.call(
        objectType, id, variant, placeholder, defaultValue, required, regex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult Function(String objectType, String text)? text,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(
          objectType, id, variant, placeholder, defaultValue, required, regex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MetadataFormFieldInputObject value) input,
    required TResult Function(MetadataFormFieldTextObject value) text,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MetadataFormFieldInputObject value)? input,
    TResult? Function(MetadataFormFieldTextObject value)? text,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MetadataFormFieldInputObject value)? input,
    TResult Function(MetadataFormFieldTextObject value)? text,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataFormFieldInputObjectImplToJson(
      this,
    );
  }
}

abstract class MetadataFormFieldInputObject implements MetadataFormFieldObject {
  factory MetadataFormFieldInputObject(
      {required final String objectType,
      required final String id,
      final FormFieldVariant variant,
      final String? placeholder,
      final String? defaultValue,
      final bool? required,
      final String? regex}) = _$MetadataFormFieldInputObjectImpl;

  factory MetadataFormFieldInputObject.fromJson(Map<String, dynamic> json) =
      _$MetadataFormFieldInputObjectImpl.fromJson;

  @override
  String get objectType;
  String get id;
  FormFieldVariant get variant;
  String? get placeholder;
  String? get defaultValue;
  bool? get required;
  String? get regex;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataFormFieldInputObjectImplCopyWith<
          _$MetadataFormFieldInputObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MetadataFormFieldTextObjectImplCopyWith<$Res>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  factory _$$MetadataFormFieldTextObjectImplCopyWith(
          _$MetadataFormFieldTextObjectImpl value,
          $Res Function(_$MetadataFormFieldTextObjectImpl) then) =
      __$$MetadataFormFieldTextObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String objectType, String text});
}

/// @nodoc
class __$$MetadataFormFieldTextObjectImplCopyWithImpl<$Res>
    extends _$MetadataFormFieldObjectCopyWithImpl<$Res,
        _$MetadataFormFieldTextObjectImpl>
    implements _$$MetadataFormFieldTextObjectImplCopyWith<$Res> {
  __$$MetadataFormFieldTextObjectImplCopyWithImpl(
      _$MetadataFormFieldTextObjectImpl _value,
      $Res Function(_$MetadataFormFieldTextObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectType = null,
    Object? text = null,
  }) {
    return _then(_$MetadataFormFieldTextObjectImpl(
      objectType: null == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataFormFieldTextObjectImpl implements MetadataFormFieldTextObject {
  _$MetadataFormFieldTextObjectImpl(
      {required this.objectType, required this.text});

  factory _$MetadataFormFieldTextObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MetadataFormFieldTextObjectImplFromJson(json);

  @override
  final String objectType;
  @override
  final String text;

  @override
  String toString() {
    return 'MetadataFormFieldObject.text(objectType: $objectType, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataFormFieldTextObjectImpl &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectType, text);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataFormFieldTextObjectImplCopyWith<_$MetadataFormFieldTextObjectImpl>
      get copyWith => __$$MetadataFormFieldTextObjectImplCopyWithImpl<
          _$MetadataFormFieldTextObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)
        input,
    required TResult Function(String objectType, String text) text,
  }) {
    return text(objectType, this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult? Function(String objectType, String text)? text,
  }) {
    return text?.call(objectType, this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult Function(String objectType, String text)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(objectType, this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MetadataFormFieldInputObject value) input,
    required TResult Function(MetadataFormFieldTextObject value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MetadataFormFieldInputObject value)? input,
    TResult? Function(MetadataFormFieldTextObject value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MetadataFormFieldInputObject value)? input,
    TResult Function(MetadataFormFieldTextObject value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataFormFieldTextObjectImplToJson(
      this,
    );
  }
}

abstract class MetadataFormFieldTextObject implements MetadataFormFieldObject {
  factory MetadataFormFieldTextObject(
      {required final String objectType,
      required final String text}) = _$MetadataFormFieldTextObjectImpl;

  factory MetadataFormFieldTextObject.fromJson(Map<String, dynamic> json) =
      _$MetadataFormFieldTextObjectImpl.fromJson;

  @override
  String get objectType;
  String get text;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataFormFieldTextObjectImplCopyWith<_$MetadataFormFieldTextObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetadataPluginRepository _$MetadataPluginRepositoryFromJson(
    Map<String, dynamic> json) {
  return _MetadataPluginRepository.fromJson(json);
}

/// @nodoc
mixin _$MetadataPluginRepository {
  String get name => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get repoUrl => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;

  /// Serializes this MetadataPluginRepository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataPluginRepositoryCopyWith<MetadataPluginRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataPluginRepositoryCopyWith<$Res> {
  factory $MetadataPluginRepositoryCopyWith(MetadataPluginRepository value,
          $Res Function(MetadataPluginRepository) then) =
      _$MetadataPluginRepositoryCopyWithImpl<$Res, MetadataPluginRepository>;
  @useResult
  $Res call(
      {String name,
      String owner,
      String description,
      String repoUrl,
      List<String> topics});
}

/// @nodoc
class _$MetadataPluginRepositoryCopyWithImpl<$Res,
        $Val extends MetadataPluginRepository>
    implements $MetadataPluginRepositoryCopyWith<$Res> {
  _$MetadataPluginRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? owner = null,
    Object? description = null,
    Object? repoUrl = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      repoUrl: null == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataPluginRepositoryImplCopyWith<$Res>
    implements $MetadataPluginRepositoryCopyWith<$Res> {
  factory _$$MetadataPluginRepositoryImplCopyWith(
          _$MetadataPluginRepositoryImpl value,
          $Res Function(_$MetadataPluginRepositoryImpl) then) =
      __$$MetadataPluginRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String owner,
      String description,
      String repoUrl,
      List<String> topics});
}

/// @nodoc
class __$$MetadataPluginRepositoryImplCopyWithImpl<$Res>
    extends _$MetadataPluginRepositoryCopyWithImpl<$Res,
        _$MetadataPluginRepositoryImpl>
    implements _$$MetadataPluginRepositoryImplCopyWith<$Res> {
  __$$MetadataPluginRepositoryImplCopyWithImpl(
      _$MetadataPluginRepositoryImpl _value,
      $Res Function(_$MetadataPluginRepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? owner = null,
    Object? description = null,
    Object? repoUrl = null,
    Object? topics = null,
  }) {
    return _then(_$MetadataPluginRepositoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      repoUrl: null == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataPluginRepositoryImpl implements _MetadataPluginRepository {
  _$MetadataPluginRepositoryImpl(
      {required this.name,
      required this.owner,
      required this.description,
      required this.repoUrl,
      required final List<String> topics})
      : _topics = topics;

  factory _$MetadataPluginRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataPluginRepositoryImplFromJson(json);

  @override
  final String name;
  @override
  final String owner;
  @override
  final String description;
  @override
  final String repoUrl;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'MetadataPluginRepository(name: $name, owner: $owner, description: $description, repoUrl: $repoUrl, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataPluginRepositoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, owner, description,
      repoUrl, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataPluginRepositoryImplCopyWith<_$MetadataPluginRepositoryImpl>
      get copyWith => __$$MetadataPluginRepositoryImplCopyWithImpl<
          _$MetadataPluginRepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataPluginRepositoryImplToJson(
      this,
    );
  }
}

abstract class _MetadataPluginRepository implements MetadataPluginRepository {
  factory _MetadataPluginRepository(
      {required final String name,
      required final String owner,
      required final String description,
      required final String repoUrl,
      required final List<String> topics}) = _$MetadataPluginRepositoryImpl;

  factory _MetadataPluginRepository.fromJson(Map<String, dynamic> json) =
      _$MetadataPluginRepositoryImpl.fromJson;

  @override
  String get name;
  @override
  String get owner;
  @override
  String get description;
  @override
  String get repoUrl;
  @override
  List<String> get topics;

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataPluginRepositoryImplCopyWith<_$MetadataPluginRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
