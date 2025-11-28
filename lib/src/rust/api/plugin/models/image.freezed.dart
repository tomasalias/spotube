// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeImageObject _$SpotubeImageObjectFromJson(Map<String, dynamic> json) {
  return _SpotubeImageObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeImageObject {
  String get typeName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this SpotubeImageObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeImageObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeImageObjectCopyWith<SpotubeImageObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeImageObjectCopyWith<$Res> {
  factory $SpotubeImageObjectCopyWith(
          SpotubeImageObject value, $Res Function(SpotubeImageObject) then) =
      _$SpotubeImageObjectCopyWithImpl<$Res, SpotubeImageObject>;
  @useResult
  $Res call({String typeName, String url, int? width, int? height});
}

/// @nodoc
class _$SpotubeImageObjectCopyWithImpl<$Res, $Val extends SpotubeImageObject>
    implements $SpotubeImageObjectCopyWith<$Res> {
  _$SpotubeImageObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeImageObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeImageObjectImplCopyWith<$Res>
    implements $SpotubeImageObjectCopyWith<$Res> {
  factory _$$SpotubeImageObjectImplCopyWith(_$SpotubeImageObjectImpl value,
          $Res Function(_$SpotubeImageObjectImpl) then) =
      __$$SpotubeImageObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String typeName, String url, int? width, int? height});
}

/// @nodoc
class __$$SpotubeImageObjectImplCopyWithImpl<$Res>
    extends _$SpotubeImageObjectCopyWithImpl<$Res, _$SpotubeImageObjectImpl>
    implements _$$SpotubeImageObjectImplCopyWith<$Res> {
  __$$SpotubeImageObjectImplCopyWithImpl(_$SpotubeImageObjectImpl _value,
      $Res Function(_$SpotubeImageObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeImageObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$SpotubeImageObjectImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeImageObjectImpl implements _SpotubeImageObject {
  const _$SpotubeImageObjectImpl(
      {required this.typeName, required this.url, this.width, this.height});

  factory _$SpotubeImageObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeImageObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'SpotubeImageObject(typeName: $typeName, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeImageObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeName, url, width, height);

  /// Create a copy of SpotubeImageObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeImageObjectImplCopyWith<_$SpotubeImageObjectImpl> get copyWith =>
      __$$SpotubeImageObjectImplCopyWithImpl<_$SpotubeImageObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeImageObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeImageObject implements SpotubeImageObject {
  const factory _SpotubeImageObject(
      {required final String typeName,
      required final String url,
      final int? width,
      final int? height}) = _$SpotubeImageObjectImpl;

  factory _SpotubeImageObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeImageObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get url;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of SpotubeImageObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeImageObjectImplCopyWith<_$SpotubeImageObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
