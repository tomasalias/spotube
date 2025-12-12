// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeUserObject _$SpotubeUserObjectFromJson(Map<String, dynamic> json) {
  return _SpotubeUserObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeUserObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SpotubeImageObject> get images => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;

  /// Serializes this SpotubeUserObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeUserObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeUserObjectCopyWith<SpotubeUserObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeUserObjectCopyWith<$Res> {
  factory $SpotubeUserObjectCopyWith(
          SpotubeUserObject value, $Res Function(SpotubeUserObject) then) =
      _$SpotubeUserObjectCopyWithImpl<$Res, SpotubeUserObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<SpotubeImageObject> images,
      String externalUri});
}

/// @nodoc
class _$SpotubeUserObjectCopyWithImpl<$Res, $Val extends SpotubeUserObject>
    implements $SpotubeUserObjectCopyWith<$Res> {
  _$SpotubeUserObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeUserObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? externalUri = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeUserObjectImplCopyWith<$Res>
    implements $SpotubeUserObjectCopyWith<$Res> {
  factory _$$SpotubeUserObjectImplCopyWith(_$SpotubeUserObjectImpl value,
          $Res Function(_$SpotubeUserObjectImpl) then) =
      __$$SpotubeUserObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<SpotubeImageObject> images,
      String externalUri});
}

/// @nodoc
class __$$SpotubeUserObjectImplCopyWithImpl<$Res>
    extends _$SpotubeUserObjectCopyWithImpl<$Res, _$SpotubeUserObjectImpl>
    implements _$$SpotubeUserObjectImplCopyWith<$Res> {
  __$$SpotubeUserObjectImplCopyWithImpl(_$SpotubeUserObjectImpl _value,
      $Res Function(_$SpotubeUserObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeUserObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? externalUri = null,
  }) {
    return _then(_$SpotubeUserObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeUserObjectImpl implements _SpotubeUserObject {
  const _$SpotubeUserObjectImpl(
      {required this.id,
      required this.name,
      required final List<SpotubeImageObject> images,
      required this.externalUri})
      : _images = images;

  factory _$SpotubeUserObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeUserObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SpotubeImageObject> _images;
  @override
  List<SpotubeImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String externalUri;

  @override
  String toString() {
    return 'SpotubeUserObject(id: $id, name: $name, images: $images, externalUri: $externalUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeUserObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_images), externalUri);

  /// Create a copy of SpotubeUserObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeUserObjectImplCopyWith<_$SpotubeUserObjectImpl> get copyWith =>
      __$$SpotubeUserObjectImplCopyWithImpl<_$SpotubeUserObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeUserObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeUserObject implements SpotubeUserObject {
  const factory _SpotubeUserObject(
      {required final String id,
      required final String name,
      required final List<SpotubeImageObject> images,
      required final String externalUri}) = _$SpotubeUserObjectImpl;

  factory _SpotubeUserObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeUserObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SpotubeImageObject> get images;
  @override
  String get externalUri;

  /// Create a copy of SpotubeUserObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeUserObjectImplCopyWith<_$SpotubeUserObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
