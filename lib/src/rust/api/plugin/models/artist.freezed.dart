// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeFullArtistObject _$SpotubeFullArtistObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeFullArtistObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeFullArtistObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<SpotubeImageObject> get images => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;

  /// Serializes this SpotubeFullArtistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeFullArtistObjectCopyWith<SpotubeFullArtistObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeFullArtistObjectCopyWith<$Res> {
  factory $SpotubeFullArtistObjectCopyWith(SpotubeFullArtistObject value,
          $Res Function(SpotubeFullArtistObject) then) =
      _$SpotubeFullArtistObjectCopyWithImpl<$Res, SpotubeFullArtistObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeImageObject> images,
      List<String>? genres,
      int? followers});
}

/// @nodoc
class _$SpotubeFullArtistObjectCopyWithImpl<$Res,
        $Val extends SpotubeFullArtistObject>
    implements $SpotubeFullArtistObjectCopyWith<$Res> {
  _$SpotubeFullArtistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = null,
    Object? genres = freezed,
    Object? followers = freezed,
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
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeFullArtistObjectImplCopyWith<$Res>
    implements $SpotubeFullArtistObjectCopyWith<$Res> {
  factory _$$SpotubeFullArtistObjectImplCopyWith(
          _$SpotubeFullArtistObjectImpl value,
          $Res Function(_$SpotubeFullArtistObjectImpl) then) =
      __$$SpotubeFullArtistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeImageObject> images,
      List<String>? genres,
      int? followers});
}

/// @nodoc
class __$$SpotubeFullArtistObjectImplCopyWithImpl<$Res>
    extends _$SpotubeFullArtistObjectCopyWithImpl<$Res,
        _$SpotubeFullArtistObjectImpl>
    implements _$$SpotubeFullArtistObjectImplCopyWith<$Res> {
  __$$SpotubeFullArtistObjectImplCopyWithImpl(
      _$SpotubeFullArtistObjectImpl _value,
      $Res Function(_$SpotubeFullArtistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = null,
    Object? genres = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$SpotubeFullArtistObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeFullArtistObjectImpl implements _SpotubeFullArtistObject {
  const _$SpotubeFullArtistObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      required final List<SpotubeImageObject> images,
      final List<String>? genres,
      this.followers})
      : _images = images,
        _genres = genres;

  factory _$SpotubeFullArtistObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeFullArtistObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<SpotubeImageObject> _images;
  @override
  List<SpotubeImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? followers;

  @override
  String toString() {
    return 'SpotubeFullArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images, genres: $genres, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeFullArtistObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_genres),
      followers);

  /// Create a copy of SpotubeFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeFullArtistObjectImplCopyWith<_$SpotubeFullArtistObjectImpl>
      get copyWith => __$$SpotubeFullArtistObjectImplCopyWithImpl<
          _$SpotubeFullArtistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeFullArtistObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeFullArtistObject implements SpotubeFullArtistObject {
  const factory _SpotubeFullArtistObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      required final List<SpotubeImageObject> images,
      final List<String>? genres,
      final int? followers}) = _$SpotubeFullArtistObjectImpl;

  factory _SpotubeFullArtistObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeFullArtistObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<SpotubeImageObject> get images;
  @override
  List<String>? get genres;
  @override
  int? get followers;

  /// Create a copy of SpotubeFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeFullArtistObjectImplCopyWith<_$SpotubeFullArtistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeSimpleArtistObject _$SpotubeSimpleArtistObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeSimpleArtistObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeSimpleArtistObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<SpotubeImageObject>? get images => throw _privateConstructorUsedError;

  /// Serializes this SpotubeSimpleArtistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeSimpleArtistObjectCopyWith<SpotubeSimpleArtistObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeSimpleArtistObjectCopyWith<$Res> {
  factory $SpotubeSimpleArtistObjectCopyWith(SpotubeSimpleArtistObject value,
          $Res Function(SpotubeSimpleArtistObject) then) =
      _$SpotubeSimpleArtistObjectCopyWithImpl<$Res, SpotubeSimpleArtistObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeImageObject>? images});
}

/// @nodoc
class _$SpotubeSimpleArtistObjectCopyWithImpl<$Res,
        $Val extends SpotubeSimpleArtistObject>
    implements $SpotubeSimpleArtistObjectCopyWith<$Res> {
  _$SpotubeSimpleArtistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = freezed,
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
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeSimpleArtistObjectImplCopyWith<$Res>
    implements $SpotubeSimpleArtistObjectCopyWith<$Res> {
  factory _$$SpotubeSimpleArtistObjectImplCopyWith(
          _$SpotubeSimpleArtistObjectImpl value,
          $Res Function(_$SpotubeSimpleArtistObjectImpl) then) =
      __$$SpotubeSimpleArtistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeImageObject>? images});
}

/// @nodoc
class __$$SpotubeSimpleArtistObjectImplCopyWithImpl<$Res>
    extends _$SpotubeSimpleArtistObjectCopyWithImpl<$Res,
        _$SpotubeSimpleArtistObjectImpl>
    implements _$$SpotubeSimpleArtistObjectImplCopyWith<$Res> {
  __$$SpotubeSimpleArtistObjectImplCopyWithImpl(
      _$SpotubeSimpleArtistObjectImpl _value,
      $Res Function(_$SpotubeSimpleArtistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = freezed,
  }) {
    return _then(_$SpotubeSimpleArtistObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeSimpleArtistObjectImpl implements _SpotubeSimpleArtistObject {
  const _$SpotubeSimpleArtistObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      final List<SpotubeImageObject>? images})
      : _images = images;

  factory _$SpotubeSimpleArtistObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeSimpleArtistObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<SpotubeImageObject>? _images;
  @override
  List<SpotubeImageObject>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpotubeSimpleArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeSimpleArtistObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, externalUri,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of SpotubeSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeSimpleArtistObjectImplCopyWith<_$SpotubeSimpleArtistObjectImpl>
      get copyWith => __$$SpotubeSimpleArtistObjectImplCopyWithImpl<
          _$SpotubeSimpleArtistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeSimpleArtistObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeSimpleArtistObject implements SpotubeSimpleArtistObject {
  const factory _SpotubeSimpleArtistObject(
          {required final String id,
          required final String name,
          required final String externalUri,
          final List<SpotubeImageObject>? images}) =
      _$SpotubeSimpleArtistObjectImpl;

  factory _SpotubeSimpleArtistObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeSimpleArtistObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<SpotubeImageObject>? get images;

  /// Create a copy of SpotubeSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeSimpleArtistObjectImplCopyWith<_$SpotubeSimpleArtistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
