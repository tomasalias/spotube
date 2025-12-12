// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeFullTrackObject _$SpotubeFullTrackObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeFullTrackObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeFullTrackObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<SpotubeSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  SpotubeSimpleAlbumObject get album => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  String get isrc => throw _privateConstructorUsedError;
  bool get explicit => throw _privateConstructorUsedError;

  /// Serializes this SpotubeFullTrackObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeFullTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeFullTrackObjectCopyWith<SpotubeFullTrackObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeFullTrackObjectCopyWith<$Res> {
  factory $SpotubeFullTrackObjectCopyWith(SpotubeFullTrackObject value,
          $Res Function(SpotubeFullTrackObject) then) =
      _$SpotubeFullTrackObjectCopyWithImpl<$Res, SpotubeFullTrackObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      SpotubeSimpleAlbumObject album,
      int durationMs,
      String isrc,
      bool explicit});

  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class _$SpotubeFullTrackObjectCopyWithImpl<$Res,
        $Val extends SpotubeFullTrackObject>
    implements $SpotubeFullTrackObjectCopyWith<$Res> {
  _$SpotubeFullTrackObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeFullTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? isrc = null,
    Object? explicit = null,
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
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleArtistObject>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SpotubeFullTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album {
    return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotubeFullTrackObjectImplCopyWith<$Res>
    implements $SpotubeFullTrackObjectCopyWith<$Res> {
  factory _$$SpotubeFullTrackObjectImplCopyWith(
          _$SpotubeFullTrackObjectImpl value,
          $Res Function(_$SpotubeFullTrackObjectImpl) then) =
      __$$SpotubeFullTrackObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      SpotubeSimpleAlbumObject album,
      int durationMs,
      String isrc,
      bool explicit});

  @override
  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class __$$SpotubeFullTrackObjectImplCopyWithImpl<$Res>
    extends _$SpotubeFullTrackObjectCopyWithImpl<$Res,
        _$SpotubeFullTrackObjectImpl>
    implements _$$SpotubeFullTrackObjectImplCopyWith<$Res> {
  __$$SpotubeFullTrackObjectImplCopyWithImpl(
      _$SpotubeFullTrackObjectImpl _value,
      $Res Function(_$SpotubeFullTrackObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeFullTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? isrc = null,
    Object? explicit = null,
  }) {
    return _then(_$SpotubeFullTrackObjectImpl(
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
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeFullTrackObjectImpl implements _SpotubeFullTrackObject {
  const _$SpotubeFullTrackObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required this.album,
      required this.durationMs,
      required this.isrc,
      required this.explicit})
      : _artists = artists;

  factory _$SpotubeFullTrackObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeFullTrackObjectImplFromJson(json);

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

  @override
  final SpotubeSimpleAlbumObject album;
  @override
  final int durationMs;
  @override
  final String isrc;
  @override
  final bool explicit;

  @override
  String toString() {
    return 'SpotubeFullTrackObject(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, isrc: $isrc, explicit: $explicit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeFullTrackObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_artists),
      album,
      durationMs,
      isrc,
      explicit);

  /// Create a copy of SpotubeFullTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeFullTrackObjectImplCopyWith<_$SpotubeFullTrackObjectImpl>
      get copyWith => __$$SpotubeFullTrackObjectImplCopyWithImpl<
          _$SpotubeFullTrackObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeFullTrackObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeFullTrackObject implements SpotubeFullTrackObject {
  const factory _SpotubeFullTrackObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required final SpotubeSimpleAlbumObject album,
      required final int durationMs,
      required final String isrc,
      required final bool explicit}) = _$SpotubeFullTrackObjectImpl;

  factory _SpotubeFullTrackObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeFullTrackObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<SpotubeSimpleArtistObject> get artists;
  @override
  SpotubeSimpleAlbumObject get album;
  @override
  int get durationMs;
  @override
  String get isrc;
  @override
  bool get explicit;

  /// Create a copy of SpotubeFullTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeFullTrackObjectImplCopyWith<_$SpotubeFullTrackObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeLocalTrackObject _$SpotubeLocalTrackObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeLocalTrackObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeLocalTrackObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<SpotubeSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  SpotubeSimpleAlbumObject get album => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this SpotubeLocalTrackObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeLocalTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeLocalTrackObjectCopyWith<SpotubeLocalTrackObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeLocalTrackObjectCopyWith<$Res> {
  factory $SpotubeLocalTrackObjectCopyWith(SpotubeLocalTrackObject value,
          $Res Function(SpotubeLocalTrackObject) then) =
      _$SpotubeLocalTrackObjectCopyWithImpl<$Res, SpotubeLocalTrackObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      SpotubeSimpleAlbumObject album,
      int durationMs,
      String path});

  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class _$SpotubeLocalTrackObjectCopyWithImpl<$Res,
        $Val extends SpotubeLocalTrackObject>
    implements $SpotubeLocalTrackObjectCopyWith<$Res> {
  _$SpotubeLocalTrackObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeLocalTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? path = null,
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
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleArtistObject>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SpotubeLocalTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album {
    return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotubeLocalTrackObjectImplCopyWith<$Res>
    implements $SpotubeLocalTrackObjectCopyWith<$Res> {
  factory _$$SpotubeLocalTrackObjectImplCopyWith(
          _$SpotubeLocalTrackObjectImpl value,
          $Res Function(_$SpotubeLocalTrackObjectImpl) then) =
      __$$SpotubeLocalTrackObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      SpotubeSimpleAlbumObject album,
      int durationMs,
      String path});

  @override
  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class __$$SpotubeLocalTrackObjectImplCopyWithImpl<$Res>
    extends _$SpotubeLocalTrackObjectCopyWithImpl<$Res,
        _$SpotubeLocalTrackObjectImpl>
    implements _$$SpotubeLocalTrackObjectImplCopyWith<$Res> {
  __$$SpotubeLocalTrackObjectImplCopyWithImpl(
      _$SpotubeLocalTrackObjectImpl _value,
      $Res Function(_$SpotubeLocalTrackObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeLocalTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? path = null,
  }) {
    return _then(_$SpotubeLocalTrackObjectImpl(
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
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeLocalTrackObjectImpl implements _SpotubeLocalTrackObject {
  const _$SpotubeLocalTrackObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required this.album,
      required this.durationMs,
      required this.path})
      : _artists = artists;

  factory _$SpotubeLocalTrackObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeLocalTrackObjectImplFromJson(json);

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

  @override
  final SpotubeSimpleAlbumObject album;
  @override
  final int durationMs;
  @override
  final String path;

  @override
  String toString() {
    return 'SpotubeLocalTrackObject(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeLocalTrackObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, externalUri,
      const DeepCollectionEquality().hash(_artists), album, durationMs, path);

  /// Create a copy of SpotubeLocalTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeLocalTrackObjectImplCopyWith<_$SpotubeLocalTrackObjectImpl>
      get copyWith => __$$SpotubeLocalTrackObjectImplCopyWithImpl<
          _$SpotubeLocalTrackObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeLocalTrackObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeLocalTrackObject implements SpotubeLocalTrackObject {
  const factory _SpotubeLocalTrackObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required final SpotubeSimpleAlbumObject album,
      required final int durationMs,
      required final String path}) = _$SpotubeLocalTrackObjectImpl;

  factory _SpotubeLocalTrackObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeLocalTrackObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<SpotubeSimpleArtistObject> get artists;
  @override
  SpotubeSimpleAlbumObject get album;
  @override
  int get durationMs;
  @override
  String get path;

  /// Create a copy of SpotubeLocalTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeLocalTrackObjectImplCopyWith<_$SpotubeLocalTrackObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeTrackObject _$SpotubeTrackObjectFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'full':
      return SpotubeTrackObject_Full.fromJson(json);
    case 'local':
      return SpotubeTrackObject_Local.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SpotubeTrackObject',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SpotubeTrackObject {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) full,
    required TResult Function(SpotubeLocalTrackObject field0) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? full,
    TResult? Function(SpotubeLocalTrackObject field0)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? full,
    TResult Function(SpotubeLocalTrackObject field0)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject_Full value) full,
    required TResult Function(SpotubeTrackObject_Local value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject_Full value)? full,
    TResult? Function(SpotubeTrackObject_Local value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeTrackObject_Full value)? full,
    TResult Function(SpotubeTrackObject_Local value)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SpotubeTrackObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeTrackObjectCopyWith<$Res> {
  factory $SpotubeTrackObjectCopyWith(
          SpotubeTrackObject value, $Res Function(SpotubeTrackObject) then) =
      _$SpotubeTrackObjectCopyWithImpl<$Res, SpotubeTrackObject>;
}

/// @nodoc
class _$SpotubeTrackObjectCopyWithImpl<$Res, $Val extends SpotubeTrackObject>
    implements $SpotubeTrackObjectCopyWith<$Res> {
  _$SpotubeTrackObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SpotubeTrackObject_FullImplCopyWith<$Res> {
  factory _$$SpotubeTrackObject_FullImplCopyWith(
          _$SpotubeTrackObject_FullImpl value,
          $Res Function(_$SpotubeTrackObject_FullImpl) then) =
      __$$SpotubeTrackObject_FullImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeFullTrackObject field0});

  $SpotubeFullTrackObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeTrackObject_FullImplCopyWithImpl<$Res>
    extends _$SpotubeTrackObjectCopyWithImpl<$Res,
        _$SpotubeTrackObject_FullImpl>
    implements _$$SpotubeTrackObject_FullImplCopyWith<$Res> {
  __$$SpotubeTrackObject_FullImplCopyWithImpl(
      _$SpotubeTrackObject_FullImpl _value,
      $Res Function(_$SpotubeTrackObject_FullImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeTrackObject_FullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullTrackObject,
    ));
  }

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeFullTrackObjectCopyWith<$Res> get field0 {
    return $SpotubeFullTrackObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeTrackObject_FullImpl extends SpotubeTrackObject_Full {
  const _$SpotubeTrackObject_FullImpl(this.field0, {final String? $type})
      : $type = $type ?? 'full',
        super._();

  factory _$SpotubeTrackObject_FullImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeTrackObject_FullImplFromJson(json);

  @override
  final SpotubeFullTrackObject field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SpotubeTrackObject.full(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeTrackObject_FullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeTrackObject_FullImplCopyWith<_$SpotubeTrackObject_FullImpl>
      get copyWith => __$$SpotubeTrackObject_FullImplCopyWithImpl<
          _$SpotubeTrackObject_FullImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) full,
    required TResult Function(SpotubeLocalTrackObject field0) local,
  }) {
    return full(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? full,
    TResult? Function(SpotubeLocalTrackObject field0)? local,
  }) {
    return full?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? full,
    TResult Function(SpotubeLocalTrackObject field0)? local,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject_Full value) full,
    required TResult Function(SpotubeTrackObject_Local value) local,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject_Full value)? full,
    TResult? Function(SpotubeTrackObject_Local value)? local,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeTrackObject_Full value)? full,
    TResult Function(SpotubeTrackObject_Local value)? local,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeTrackObject_FullImplToJson(
      this,
    );
  }
}

abstract class SpotubeTrackObject_Full extends SpotubeTrackObject {
  const factory SpotubeTrackObject_Full(final SpotubeFullTrackObject field0) =
      _$SpotubeTrackObject_FullImpl;
  const SpotubeTrackObject_Full._() : super._();

  factory SpotubeTrackObject_Full.fromJson(Map<String, dynamic> json) =
      _$SpotubeTrackObject_FullImpl.fromJson;

  @override
  SpotubeFullTrackObject get field0;

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeTrackObject_FullImplCopyWith<_$SpotubeTrackObject_FullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeTrackObject_LocalImplCopyWith<$Res> {
  factory _$$SpotubeTrackObject_LocalImplCopyWith(
          _$SpotubeTrackObject_LocalImpl value,
          $Res Function(_$SpotubeTrackObject_LocalImpl) then) =
      __$$SpotubeTrackObject_LocalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeLocalTrackObject field0});

  $SpotubeLocalTrackObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeTrackObject_LocalImplCopyWithImpl<$Res>
    extends _$SpotubeTrackObjectCopyWithImpl<$Res,
        _$SpotubeTrackObject_LocalImpl>
    implements _$$SpotubeTrackObject_LocalImplCopyWith<$Res> {
  __$$SpotubeTrackObject_LocalImplCopyWithImpl(
      _$SpotubeTrackObject_LocalImpl _value,
      $Res Function(_$SpotubeTrackObject_LocalImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeTrackObject_LocalImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeLocalTrackObject,
    ));
  }

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeLocalTrackObjectCopyWith<$Res> get field0 {
    return $SpotubeLocalTrackObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeTrackObject_LocalImpl extends SpotubeTrackObject_Local {
  const _$SpotubeTrackObject_LocalImpl(this.field0, {final String? $type})
      : $type = $type ?? 'local',
        super._();

  factory _$SpotubeTrackObject_LocalImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeTrackObject_LocalImplFromJson(json);

  @override
  final SpotubeLocalTrackObject field0;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SpotubeTrackObject.local(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeTrackObject_LocalImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeTrackObject_LocalImplCopyWith<_$SpotubeTrackObject_LocalImpl>
      get copyWith => __$$SpotubeTrackObject_LocalImplCopyWithImpl<
          _$SpotubeTrackObject_LocalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) full,
    required TResult Function(SpotubeLocalTrackObject field0) local,
  }) {
    return local(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? full,
    TResult? Function(SpotubeLocalTrackObject field0)? local,
  }) {
    return local?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? full,
    TResult Function(SpotubeLocalTrackObject field0)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject_Full value) full,
    required TResult Function(SpotubeTrackObject_Local value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject_Full value)? full,
    TResult? Function(SpotubeTrackObject_Local value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeTrackObject_Full value)? full,
    TResult Function(SpotubeTrackObject_Local value)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeTrackObject_LocalImplToJson(
      this,
    );
  }
}

abstract class SpotubeTrackObject_Local extends SpotubeTrackObject {
  const factory SpotubeTrackObject_Local(final SpotubeLocalTrackObject field0) =
      _$SpotubeTrackObject_LocalImpl;
  const SpotubeTrackObject_Local._() : super._();

  factory SpotubeTrackObject_Local.fromJson(Map<String, dynamic> json) =
      _$SpotubeTrackObject_LocalImpl.fromJson;

  @override
  SpotubeLocalTrackObject get field0;

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeTrackObject_LocalImplCopyWith<_$SpotubeTrackObject_LocalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
