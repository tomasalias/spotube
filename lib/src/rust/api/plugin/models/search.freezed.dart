// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeSearchResponseObject _$SpotubeSearchResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeSearchResponseObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeSearchResponseObject {
  String get typeName => throw _privateConstructorUsedError;
  List<SpotubeSimpleAlbumObject> get albums =>
      throw _privateConstructorUsedError;
  List<SpotubeFullArtistObject> get artists =>
      throw _privateConstructorUsedError;
  List<SpotubeSimplePlaylistObject> get playlists =>
      throw _privateConstructorUsedError;
  List<SpotubeFullTrackObject> get tracks => throw _privateConstructorUsedError;

  /// Serializes this SpotubeSearchResponseObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeSearchResponseObjectCopyWith<SpotubeSearchResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeSearchResponseObjectCopyWith<$Res> {
  factory $SpotubeSearchResponseObjectCopyWith(
          SpotubeSearchResponseObject value,
          $Res Function(SpotubeSearchResponseObject) then) =
      _$SpotubeSearchResponseObjectCopyWithImpl<$Res,
          SpotubeSearchResponseObject>;
  @useResult
  $Res call(
      {String typeName,
      List<SpotubeSimpleAlbumObject> albums,
      List<SpotubeFullArtistObject> artists,
      List<SpotubeSimplePlaylistObject> playlists,
      List<SpotubeFullTrackObject> tracks});
}

/// @nodoc
class _$SpotubeSearchResponseObjectCopyWithImpl<$Res,
        $Val extends SpotubeSearchResponseObject>
    implements $SpotubeSearchResponseObjectCopyWith<$Res> {
  _$SpotubeSearchResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? albums = null,
    Object? artists = null,
    Object? playlists = null,
    Object? tracks = null,
  }) {
    return _then(_value.copyWith(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleAlbumObject>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeFullArtistObject>,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimplePlaylistObject>,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SpotubeFullTrackObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeSearchResponseObjectImplCopyWith<$Res>
    implements $SpotubeSearchResponseObjectCopyWith<$Res> {
  factory _$$SpotubeSearchResponseObjectImplCopyWith(
          _$SpotubeSearchResponseObjectImpl value,
          $Res Function(_$SpotubeSearchResponseObjectImpl) then) =
      __$$SpotubeSearchResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      List<SpotubeSimpleAlbumObject> albums,
      List<SpotubeFullArtistObject> artists,
      List<SpotubeSimplePlaylistObject> playlists,
      List<SpotubeFullTrackObject> tracks});
}

/// @nodoc
class __$$SpotubeSearchResponseObjectImplCopyWithImpl<$Res>
    extends _$SpotubeSearchResponseObjectCopyWithImpl<$Res,
        _$SpotubeSearchResponseObjectImpl>
    implements _$$SpotubeSearchResponseObjectImplCopyWith<$Res> {
  __$$SpotubeSearchResponseObjectImplCopyWithImpl(
      _$SpotubeSearchResponseObjectImpl _value,
      $Res Function(_$SpotubeSearchResponseObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? albums = null,
    Object? artists = null,
    Object? playlists = null,
    Object? tracks = null,
  }) {
    return _then(_$SpotubeSearchResponseObjectImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimpleAlbumObject>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeFullArtistObject>,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SpotubeSimplePlaylistObject>,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SpotubeFullTrackObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeSearchResponseObjectImpl
    implements _SpotubeSearchResponseObject {
  const _$SpotubeSearchResponseObjectImpl(
      {required this.typeName,
      required final List<SpotubeSimpleAlbumObject> albums,
      required final List<SpotubeFullArtistObject> artists,
      required final List<SpotubeSimplePlaylistObject> playlists,
      required final List<SpotubeFullTrackObject> tracks})
      : _albums = albums,
        _artists = artists,
        _playlists = playlists,
        _tracks = tracks;

  factory _$SpotubeSearchResponseObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeSearchResponseObjectImplFromJson(json);

  @override
  final String typeName;
  final List<SpotubeSimpleAlbumObject> _albums;
  @override
  List<SpotubeSimpleAlbumObject> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<SpotubeFullArtistObject> _artists;
  @override
  List<SpotubeFullArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<SpotubeSimplePlaylistObject> _playlists;
  @override
  List<SpotubeSimplePlaylistObject> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  final List<SpotubeFullTrackObject> _tracks;
  @override
  List<SpotubeFullTrackObject> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  String toString() {
    return 'SpotubeSearchResponseObject(typeName: $typeName, albums: $albums, artists: $artists, playlists: $playlists, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeSearchResponseObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeName,
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_playlists),
      const DeepCollectionEquality().hash(_tracks));

  /// Create a copy of SpotubeSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeSearchResponseObjectImplCopyWith<_$SpotubeSearchResponseObjectImpl>
      get copyWith => __$$SpotubeSearchResponseObjectImplCopyWithImpl<
          _$SpotubeSearchResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeSearchResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeSearchResponseObject
    implements SpotubeSearchResponseObject {
  const factory _SpotubeSearchResponseObject(
          {required final String typeName,
          required final List<SpotubeSimpleAlbumObject> albums,
          required final List<SpotubeFullArtistObject> artists,
          required final List<SpotubeSimplePlaylistObject> playlists,
          required final List<SpotubeFullTrackObject> tracks}) =
      _$SpotubeSearchResponseObjectImpl;

  factory _SpotubeSearchResponseObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeSearchResponseObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  List<SpotubeSimpleAlbumObject> get albums;
  @override
  List<SpotubeFullArtistObject> get artists;
  @override
  List<SpotubeSimplePlaylistObject> get playlists;
  @override
  List<SpotubeFullTrackObject> get tracks;

  /// Create a copy of SpotubeSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeSearchResponseObjectImplCopyWith<_$SpotubeSearchResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
