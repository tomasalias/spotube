// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeFullAlbumObject _$SpotubeFullAlbumObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeFullAlbumObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeFullAlbumObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SpotubeSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  List<SpotubeImageObject> get images => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  int get totalTracks => throw _privateConstructorUsedError;
  SpotubeAlbumType get albumType => throw _privateConstructorUsedError;
  String? get recordLabel => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;

  /// Serializes this SpotubeFullAlbumObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeFullAlbumObjectCopyWith<SpotubeFullAlbumObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeFullAlbumObjectCopyWith<$Res> {
  factory $SpotubeFullAlbumObjectCopyWith(SpotubeFullAlbumObject value,
          $Res Function(SpotubeFullAlbumObject) then) =
      _$SpotubeFullAlbumObjectCopyWithImpl<$Res, SpotubeFullAlbumObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      List<SpotubeSimpleArtistObject> artists,
      List<SpotubeImageObject> images,
      String releaseDate,
      String externalUri,
      int totalTracks,
      SpotubeAlbumType albumType,
      String? recordLabel,
      List<String>? genres});
}

/// @nodoc
class _$SpotubeFullAlbumObjectCopyWithImpl<$Res,
        $Val extends SpotubeFullAlbumObject>
    implements $SpotubeFullAlbumObjectCopyWith<$Res> {
  _$SpotubeFullAlbumObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? images = null,
    Object? releaseDate = null,
    Object? externalUri = null,
    Object? totalTracks = null,
    Object? albumType = null,
    Object? recordLabel = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleArtistObject>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as SpotubeAlbumType,
      recordLabel: freezed == recordLabel
          ? _value.recordLabel
          : recordLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeFullAlbumObjectImplCopyWith<$Res>
    implements $SpotubeFullAlbumObjectCopyWith<$Res> {
  factory _$$SpotubeFullAlbumObjectImplCopyWith(
          _$SpotubeFullAlbumObjectImpl value,
          $Res Function(_$SpotubeFullAlbumObjectImpl) then) =
      __$$SpotubeFullAlbumObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      List<SpotubeSimpleArtistObject> artists,
      List<SpotubeImageObject> images,
      String releaseDate,
      String externalUri,
      int totalTracks,
      SpotubeAlbumType albumType,
      String? recordLabel,
      List<String>? genres});
}

/// @nodoc
class __$$SpotubeFullAlbumObjectImplCopyWithImpl<$Res>
    extends _$SpotubeFullAlbumObjectCopyWithImpl<$Res,
        _$SpotubeFullAlbumObjectImpl>
    implements _$$SpotubeFullAlbumObjectImplCopyWith<$Res> {
  __$$SpotubeFullAlbumObjectImplCopyWithImpl(
      _$SpotubeFullAlbumObjectImpl _value,
      $Res Function(_$SpotubeFullAlbumObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? images = null,
    Object? releaseDate = null,
    Object? externalUri = null,
    Object? totalTracks = null,
    Object? albumType = null,
    Object? recordLabel = freezed,
    Object? genres = freezed,
  }) {
    return _then(_$SpotubeFullAlbumObjectImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleArtistObject>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as SpotubeAlbumType,
      recordLabel: freezed == recordLabel
          ? _value.recordLabel
          : recordLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeFullAlbumObjectImpl implements _SpotubeFullAlbumObject {
  const _$SpotubeFullAlbumObjectImpl(
      {required this.typeName,
      required this.id,
      required this.name,
      required final List<SpotubeSimpleArtistObject> artists,
      required final List<SpotubeImageObject> images,
      required this.releaseDate,
      required this.externalUri,
      required this.totalTracks,
      required this.albumType,
      this.recordLabel,
      final List<String>? genres})
      : _artists = artists,
        _images = images,
        _genres = genres;

  factory _$SpotubeFullAlbumObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeFullAlbumObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String id;
  @override
  final String name;
  final List<SpotubeSimpleArtistObject> _artists;
  @override
  List<SpotubeSimpleArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<SpotubeImageObject> _images;
  @override
  List<SpotubeImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String releaseDate;
  @override
  final String externalUri;
  @override
  final int totalTracks;
  @override
  final SpotubeAlbumType albumType;
  @override
  final String? recordLabel;
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
  String toString() {
    return 'SpotubeFullAlbumObject(typeName: $typeName, id: $id, name: $name, artists: $artists, images: $images, releaseDate: $releaseDate, externalUri: $externalUri, totalTracks: $totalTracks, albumType: $albumType, recordLabel: $recordLabel, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeFullAlbumObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.recordLabel, recordLabel) ||
                other.recordLabel == recordLabel) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeName,
      id,
      name,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_images),
      releaseDate,
      externalUri,
      totalTracks,
      albumType,
      recordLabel,
      const DeepCollectionEquality().hash(_genres));

  /// Create a copy of SpotubeFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeFullAlbumObjectImplCopyWith<_$SpotubeFullAlbumObjectImpl>
      get copyWith => __$$SpotubeFullAlbumObjectImplCopyWithImpl<
          _$SpotubeFullAlbumObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeFullAlbumObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeFullAlbumObject implements SpotubeFullAlbumObject {
  const factory _SpotubeFullAlbumObject(
      {required final String typeName,
      required final String id,
      required final String name,
      required final List<SpotubeSimpleArtistObject> artists,
      required final List<SpotubeImageObject> images,
      required final String releaseDate,
      required final String externalUri,
      required final int totalTracks,
      required final SpotubeAlbumType albumType,
      final String? recordLabel,
      final List<String>? genres}) = _$SpotubeFullAlbumObjectImpl;

  factory _SpotubeFullAlbumObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeFullAlbumObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get id;
  @override
  String get name;
  @override
  List<SpotubeSimpleArtistObject> get artists;
  @override
  List<SpotubeImageObject> get images;
  @override
  String get releaseDate;
  @override
  String get externalUri;
  @override
  int get totalTracks;
  @override
  SpotubeAlbumType get albumType;
  @override
  String? get recordLabel;
  @override
  List<String>? get genres;

  /// Create a copy of SpotubeFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeFullAlbumObjectImplCopyWith<_$SpotubeFullAlbumObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeSimpleAlbumObject _$SpotubeSimpleAlbumObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeSimpleAlbumObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeSimpleAlbumObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<SpotubeSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  List<SpotubeImageObject> get images => throw _privateConstructorUsedError;
  SpotubeAlbumType get albumType => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;

  /// Serializes this SpotubeSimpleAlbumObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeSimpleAlbumObjectCopyWith<SpotubeSimpleAlbumObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeSimpleAlbumObjectCopyWith<$Res> {
  factory $SpotubeSimpleAlbumObjectCopyWith(SpotubeSimpleAlbumObject value,
          $Res Function(SpotubeSimpleAlbumObject) then) =
      _$SpotubeSimpleAlbumObjectCopyWithImpl<$Res, SpotubeSimpleAlbumObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      List<SpotubeImageObject> images,
      SpotubeAlbumType albumType,
      String? releaseDate});
}

/// @nodoc
class _$SpotubeSimpleAlbumObjectCopyWithImpl<$Res,
        $Val extends SpotubeSimpleAlbumObject>
    implements $SpotubeSimpleAlbumObjectCopyWith<$Res> {
  _$SpotubeSimpleAlbumObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? images = null,
    Object? albumType = null,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
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
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleArtistObject>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as SpotubeAlbumType,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeSimpleAlbumObjectImplCopyWith<$Res>
    implements $SpotubeSimpleAlbumObjectCopyWith<$Res> {
  factory _$$SpotubeSimpleAlbumObjectImplCopyWith(
          _$SpotubeSimpleAlbumObjectImpl value,
          $Res Function(_$SpotubeSimpleAlbumObjectImpl) then) =
      __$$SpotubeSimpleAlbumObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      List<SpotubeImageObject> images,
      SpotubeAlbumType albumType,
      String? releaseDate});
}

/// @nodoc
class __$$SpotubeSimpleAlbumObjectImplCopyWithImpl<$Res>
    extends _$SpotubeSimpleAlbumObjectCopyWithImpl<$Res,
        _$SpotubeSimpleAlbumObjectImpl>
    implements _$$SpotubeSimpleAlbumObjectImplCopyWith<$Res> {
  __$$SpotubeSimpleAlbumObjectImplCopyWithImpl(
      _$SpotubeSimpleAlbumObjectImpl _value,
      $Res Function(_$SpotubeSimpleAlbumObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? images = null,
    Object? albumType = null,
    Object? releaseDate = freezed,
  }) {
    return _then(_$SpotubeSimpleAlbumObjectImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
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
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleArtistObject>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as SpotubeAlbumType,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeSimpleAlbumObjectImpl implements _SpotubeSimpleAlbumObject {
  const _$SpotubeSimpleAlbumObjectImpl(
      {required this.typeName,
      required this.id,
      required this.name,
      required this.externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required final List<SpotubeImageObject> images,
      required this.albumType,
      this.releaseDate})
      : _artists = artists,
        _images = images;

  factory _$SpotubeSimpleAlbumObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeSimpleAlbumObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<SpotubeSimpleArtistObject> _artists;
  @override
  List<SpotubeSimpleArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<SpotubeImageObject> _images;
  @override
  List<SpotubeImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final SpotubeAlbumType albumType;
  @override
  final String? releaseDate;

  @override
  String toString() {
    return 'SpotubeSimpleAlbumObject(typeName: $typeName, id: $id, name: $name, externalUri: $externalUri, artists: $artists, images: $images, albumType: $albumType, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeSimpleAlbumObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeName,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_images),
      albumType,
      releaseDate);

  /// Create a copy of SpotubeSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeSimpleAlbumObjectImplCopyWith<_$SpotubeSimpleAlbumObjectImpl>
      get copyWith => __$$SpotubeSimpleAlbumObjectImplCopyWithImpl<
          _$SpotubeSimpleAlbumObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeSimpleAlbumObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeSimpleAlbumObject implements SpotubeSimpleAlbumObject {
  const factory _SpotubeSimpleAlbumObject(
      {required final String typeName,
      required final String id,
      required final String name,
      required final String externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required final List<SpotubeImageObject> images,
      required final SpotubeAlbumType albumType,
      final String? releaseDate}) = _$SpotubeSimpleAlbumObjectImpl;

  factory _SpotubeSimpleAlbumObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeSimpleAlbumObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<SpotubeSimpleArtistObject> get artists;
  @override
  List<SpotubeImageObject> get images;
  @override
  SpotubeAlbumType get albumType;
  @override
  String? get releaseDate;

  /// Create a copy of SpotubeSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeSimpleAlbumObjectImplCopyWith<_$SpotubeSimpleAlbumObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
