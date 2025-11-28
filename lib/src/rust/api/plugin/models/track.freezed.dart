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

SpotubeTrackObject _$SpotubeTrackObjectFromJson(Map<String, dynamic> json) {
  return _SpotubeTrackObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeTrackObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<SpotubeSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  SpotubeSimpleAlbumObject get album => throw _privateConstructorUsedError;
  BigInt get durationMs => throw _privateConstructorUsedError;
  String get isrc => throw _privateConstructorUsedError;
  bool get explicit => throw _privateConstructorUsedError;

  /// Serializes this SpotubeTrackObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeTrackObjectCopyWith<SpotubeTrackObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeTrackObjectCopyWith<$Res> {
  factory $SpotubeTrackObjectCopyWith(
          SpotubeTrackObject value, $Res Function(SpotubeTrackObject) then) =
      _$SpotubeTrackObjectCopyWithImpl<$Res, SpotubeTrackObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      SpotubeSimpleAlbumObject album,
      BigInt durationMs,
      String isrc,
      bool explicit});

  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
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
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as BigInt,
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

  /// Create a copy of SpotubeTrackObject
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
abstract class _$$SpotubeTrackObjectImplCopyWith<$Res>
    implements $SpotubeTrackObjectCopyWith<$Res> {
  factory _$$SpotubeTrackObjectImplCopyWith(_$SpotubeTrackObjectImpl value,
          $Res Function(_$SpotubeTrackObjectImpl) then) =
      __$$SpotubeTrackObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String externalUri,
      List<SpotubeSimpleArtistObject> artists,
      SpotubeSimpleAlbumObject album,
      BigInt durationMs,
      String isrc,
      bool explicit});

  @override
  $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class __$$SpotubeTrackObjectImplCopyWithImpl<$Res>
    extends _$SpotubeTrackObjectCopyWithImpl<$Res, _$SpotubeTrackObjectImpl>
    implements _$$SpotubeTrackObjectImplCopyWith<$Res> {
  __$$SpotubeTrackObjectImplCopyWithImpl(_$SpotubeTrackObjectImpl _value,
      $Res Function(_$SpotubeTrackObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? isrc = null,
    Object? explicit = null,
  }) {
    return _then(_$SpotubeTrackObjectImpl(
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
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as BigInt,
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
class _$SpotubeTrackObjectImpl implements _SpotubeTrackObject {
  const _$SpotubeTrackObjectImpl(
      {required this.typeName,
      required this.id,
      required this.name,
      required this.externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required this.album,
      required this.durationMs,
      required this.isrc,
      required this.explicit})
      : _artists = artists;

  factory _$SpotubeTrackObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeTrackObjectImplFromJson(json);

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

  @override
  final SpotubeSimpleAlbumObject album;
  @override
  final BigInt durationMs;
  @override
  final String isrc;
  @override
  final bool explicit;

  @override
  String toString() {
    return 'SpotubeTrackObject(typeName: $typeName, id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, isrc: $isrc, explicit: $explicit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeTrackObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
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
      typeName,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_artists),
      album,
      durationMs,
      isrc,
      explicit);

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeTrackObjectImplCopyWith<_$SpotubeTrackObjectImpl> get copyWith =>
      __$$SpotubeTrackObjectImplCopyWithImpl<_$SpotubeTrackObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeTrackObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeTrackObject implements SpotubeTrackObject {
  const factory _SpotubeTrackObject(
      {required final String typeName,
      required final String id,
      required final String name,
      required final String externalUri,
      required final List<SpotubeSimpleArtistObject> artists,
      required final SpotubeSimpleAlbumObject album,
      required final BigInt durationMs,
      required final String isrc,
      required final bool explicit}) = _$SpotubeTrackObjectImpl;

  factory _SpotubeTrackObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeTrackObjectImpl.fromJson;

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
  SpotubeSimpleAlbumObject get album;
  @override
  BigInt get durationMs;
  @override
  String get isrc;
  @override
  bool get explicit;

  /// Create a copy of SpotubeTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeTrackObjectImplCopyWith<_$SpotubeTrackObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
