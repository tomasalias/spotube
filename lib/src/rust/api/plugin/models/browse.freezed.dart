// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'browse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpotubeBrowseSectionObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  bool get browseMore => throw _privateConstructorUsedError;
  List<SpotubeBrowseSectionResponseObjectItem> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of SpotubeBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeBrowseSectionObjectCopyWith<SpotubeBrowseSectionObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeBrowseSectionObjectCopyWith<$Res> {
  factory $SpotubeBrowseSectionObjectCopyWith(SpotubeBrowseSectionObject value,
          $Res Function(SpotubeBrowseSectionObject) then) =
      _$SpotubeBrowseSectionObjectCopyWithImpl<$Res,
          SpotubeBrowseSectionObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String title,
      String externalUri,
      bool browseMore,
      List<SpotubeBrowseSectionResponseObjectItem> items});
}

/// @nodoc
class _$SpotubeBrowseSectionObjectCopyWithImpl<$Res,
        $Val extends SpotubeBrowseSectionObject>
    implements $SpotubeBrowseSectionObjectCopyWith<$Res> {
  _$SpotubeBrowseSectionObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? title = null,
    Object? externalUri = null,
    Object? browseMore = null,
    Object? items = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      browseMore: null == browseMore
          ? _value.browseMore
          : browseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SpotubeBrowseSectionResponseObjectItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionObjectImplCopyWith<$Res>
    implements $SpotubeBrowseSectionObjectCopyWith<$Res> {
  factory _$$SpotubeBrowseSectionObjectImplCopyWith(
          _$SpotubeBrowseSectionObjectImpl value,
          $Res Function(_$SpotubeBrowseSectionObjectImpl) then) =
      __$$SpotubeBrowseSectionObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String title,
      String externalUri,
      bool browseMore,
      List<SpotubeBrowseSectionResponseObjectItem> items});
}

/// @nodoc
class __$$SpotubeBrowseSectionObjectImplCopyWithImpl<$Res>
    extends _$SpotubeBrowseSectionObjectCopyWithImpl<$Res,
        _$SpotubeBrowseSectionObjectImpl>
    implements _$$SpotubeBrowseSectionObjectImplCopyWith<$Res> {
  __$$SpotubeBrowseSectionObjectImplCopyWithImpl(
      _$SpotubeBrowseSectionObjectImpl _value,
      $Res Function(_$SpotubeBrowseSectionObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? title = null,
    Object? externalUri = null,
    Object? browseMore = null,
    Object? items = null,
  }) {
    return _then(_$SpotubeBrowseSectionObjectImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      browseMore: null == browseMore
          ? _value.browseMore
          : browseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SpotubeBrowseSectionResponseObjectItem>,
    ));
  }
}

/// @nodoc

class _$SpotubeBrowseSectionObjectImpl implements _SpotubeBrowseSectionObject {
  const _$SpotubeBrowseSectionObjectImpl(
      {required this.typeName,
      required this.id,
      required this.title,
      required this.externalUri,
      required this.browseMore,
      required final List<SpotubeBrowseSectionResponseObjectItem> items})
      : _items = items;

  @override
  final String typeName;
  @override
  final String id;
  @override
  final String title;
  @override
  final String externalUri;
  @override
  final bool browseMore;
  final List<SpotubeBrowseSectionResponseObjectItem> _items;
  @override
  List<SpotubeBrowseSectionResponseObjectItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SpotubeBrowseSectionObject(typeName: $typeName, id: $id, title: $title, externalUri: $externalUri, browseMore: $browseMore, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeBrowseSectionObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.browseMore, browseMore) ||
                other.browseMore == browseMore) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeName, id, title, externalUri,
      browseMore, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SpotubeBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionObjectImplCopyWith<_$SpotubeBrowseSectionObjectImpl>
      get copyWith => __$$SpotubeBrowseSectionObjectImplCopyWithImpl<
          _$SpotubeBrowseSectionObjectImpl>(this, _$identity);
}

abstract class _SpotubeBrowseSectionObject
    implements SpotubeBrowseSectionObject {
  const factory _SpotubeBrowseSectionObject(
          {required final String typeName,
          required final String id,
          required final String title,
          required final String externalUri,
          required final bool browseMore,
          required final List<SpotubeBrowseSectionResponseObjectItem> items}) =
      _$SpotubeBrowseSectionObjectImpl;

  @override
  String get typeName;
  @override
  String get id;
  @override
  String get title;
  @override
  String get externalUri;
  @override
  bool get browseMore;
  @override
  List<SpotubeBrowseSectionResponseObjectItem> get items;

  /// Create a copy of SpotubeBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionObjectImplCopyWith<_$SpotubeBrowseSectionObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpotubeBrowseSectionResponseObjectItem {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeBrowseSectionResponseObjectItemCopyWith<$Res> {
  factory $SpotubeBrowseSectionResponseObjectItemCopyWith(
          SpotubeBrowseSectionResponseObjectItem value,
          $Res Function(SpotubeBrowseSectionResponseObjectItem) then) =
      _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
          SpotubeBrowseSectionResponseObjectItem>;
}

/// @nodoc
class _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        $Val extends SpotubeBrowseSectionResponseObjectItem>
    implements $SpotubeBrowseSectionResponseObjectItemCopyWith<$Res> {
  _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_TrackImpl value,
          $Res Function(_$SpotubeBrowseSectionResponseObjectItem_TrackImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeTrackObject field0});

  $SpotubeTrackObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWithImpl<$Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_TrackImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWith<$Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_TrackImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_TrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_TrackImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeTrackObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeTrackObjectCopyWith<$Res> get field0 {
    return $SpotubeTrackObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_TrackImpl
    extends SpotubeBrowseSectionResponseObjectItem_Track {
  const _$SpotubeBrowseSectionResponseObjectItem_TrackImpl(this.field0)
      : super._();

  @override
  final SpotubeTrackObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.track(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeBrowseSectionResponseObjectItem_TrackImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_TrackImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_TrackImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return track(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return track?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (track != null) {
      return track(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return track(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return track?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (track != null) {
      return track(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_Track
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_Track(
          final SpotubeTrackObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_TrackImpl;
  const SpotubeBrowseSectionResponseObjectItem_Track._() : super._();

  @override
  SpotubeTrackObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_TrackImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_TrackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl value,
          $Res Function(
                  _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeFullPlaylistObject field0});

  $SpotubeFullPlaylistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWithImpl<
        $Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWith<
            $Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullPlaylistObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeFullPlaylistObjectCopyWith<$Res> get field0 {
    return $SpotubeFullPlaylistObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl
    extends SpotubeBrowseSectionResponseObjectItem_PlaylistFull {
  const _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl(this.field0)
      : super._();

  @override
  final SpotubeFullPlaylistObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.playlistFull(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return playlistFull(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return playlistFull?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (playlistFull != null) {
      return playlistFull(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return playlistFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return playlistFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (playlistFull != null) {
      return playlistFull(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_PlaylistFull
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_PlaylistFull(
          final SpotubeFullPlaylistObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl;
  const SpotubeBrowseSectionResponseObjectItem_PlaylistFull._() : super._();

  @override
  SpotubeFullPlaylistObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_PlaylistFullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl value,
          $Res Function(
                  _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeSimplePlaylistObject field0});

  $SpotubeSimplePlaylistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWithImpl<
        $Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWith<
            $Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeSimplePlaylistObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeSimplePlaylistObjectCopyWith<$Res> get field0 {
    return $SpotubeSimplePlaylistObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl
    extends SpotubeBrowseSectionResponseObjectItem_PlaylistSimple {
  const _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl(this.field0)
      : super._();

  @override
  final SpotubeSimplePlaylistObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.playlistSimple(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return playlistSimple(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return playlistSimple?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (playlistSimple != null) {
      return playlistSimple(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return playlistSimple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return playlistSimple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (playlistSimple != null) {
      return playlistSimple(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_PlaylistSimple
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_PlaylistSimple(
          final SpotubeSimplePlaylistObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl;
  const SpotubeBrowseSectionResponseObjectItem_PlaylistSimple._() : super._();

  @override
  SpotubeSimplePlaylistObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_PlaylistSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl value,
          $Res Function(
                  _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeSimpleAlbumObject field0});

  $SpotubeSimpleAlbumObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWithImpl<
        $Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWith<
            $Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeSimpleAlbumObjectCopyWith<$Res> get field0 {
    return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl
    extends SpotubeBrowseSectionResponseObjectItem_AlbumSimple {
  const _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl(this.field0)
      : super._();

  @override
  final SpotubeSimpleAlbumObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.albumSimple(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return albumSimple(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return albumSimple?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (albumSimple != null) {
      return albumSimple(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return albumSimple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return albumSimple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (albumSimple != null) {
      return albumSimple(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_AlbumSimple
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_AlbumSimple(
          final SpotubeSimpleAlbumObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl;
  const SpotubeBrowseSectionResponseObjectItem_AlbumSimple._() : super._();

  @override
  SpotubeSimpleAlbumObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_AlbumSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl value,
          $Res Function(_$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeFullAlbumObject field0});

  $SpotubeFullAlbumObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWithImpl<$Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWith<$Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullAlbumObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeFullAlbumObjectCopyWith<$Res> get field0 {
    return $SpotubeFullAlbumObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl
    extends SpotubeBrowseSectionResponseObjectItem_AlbumFull {
  const _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl(this.field0)
      : super._();

  @override
  final SpotubeFullAlbumObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.albumFull(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return albumFull(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return albumFull?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (albumFull != null) {
      return albumFull(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return albumFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return albumFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (albumFull != null) {
      return albumFull(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_AlbumFull
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_AlbumFull(
          final SpotubeFullAlbumObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl;
  const SpotubeBrowseSectionResponseObjectItem_AlbumFull._() : super._();

  @override
  SpotubeFullAlbumObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_AlbumFullImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_AlbumFullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl value,
          $Res Function(_$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeFullArtistObject field0});

  $SpotubeFullArtistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWithImpl<
        $Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWith<$Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullArtistObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeFullArtistObjectCopyWith<$Res> get field0 {
    return $SpotubeFullArtistObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl
    extends SpotubeBrowseSectionResponseObjectItem_ArtistFull {
  const _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl(this.field0)
      : super._();

  @override
  final SpotubeFullArtistObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.artistFull(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return artistFull(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return artistFull?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (artistFull != null) {
      return artistFull(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return artistFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return artistFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (artistFull != null) {
      return artistFull(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_ArtistFull
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_ArtistFull(
          final SpotubeFullArtistObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl;
  const SpotubeBrowseSectionResponseObjectItem_ArtistFull._() : super._();

  @override
  SpotubeFullArtistObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_ArtistFullImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_ArtistFullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWith<
    $Res> {
  factory _$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWith(
          _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl value,
          $Res Function(
                  _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl)
              then) =
      __$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeSimpleArtistObject field0});

  $SpotubeSimpleArtistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWithImpl<
        $Res>
    extends _$SpotubeBrowseSectionResponseObjectItemCopyWithImpl<$Res,
        _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl>
    implements
        _$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWith<
            $Res> {
  __$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWithImpl(
      _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl _value,
      $Res Function(_$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleArtistObject,
    ));
  }

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeSimpleArtistObjectCopyWith<$Res> get field0 {
    return $SpotubeSimpleArtistObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl
    extends SpotubeBrowseSectionResponseObjectItem_ArtistSimple {
  const _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl(this.field0)
      : super._();

  @override
  final SpotubeSimpleArtistObject field0;

  @override
  String toString() {
    return 'SpotubeBrowseSectionResponseObjectItem.artistSimple(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl>
      get copyWith =>
          __$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWithImpl<
                  _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
  }) {
    return artistSimple(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
  }) {
    return artistSimple?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    required TResult orElse(),
  }) {
    if (artistSimple != null) {
      return artistSimple(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)
        artistSimple,
  }) {
    return artistSimple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_Track value)?
        track,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(
            SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
  }) {
    return artistSimple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeBrowseSectionResponseObjectItem_Track value)? track,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(
            SpotubeBrowseSectionResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubeBrowseSectionResponseObjectItem_ArtistSimple value)?
        artistSimple,
    required TResult orElse(),
  }) {
    if (artistSimple != null) {
      return artistSimple(this);
    }
    return orElse();
  }
}

abstract class SpotubeBrowseSectionResponseObjectItem_ArtistSimple
    extends SpotubeBrowseSectionResponseObjectItem {
  const factory SpotubeBrowseSectionResponseObjectItem_ArtistSimple(
          final SpotubeSimpleArtistObject field0) =
      _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl;
  const SpotubeBrowseSectionResponseObjectItem_ArtistSimple._() : super._();

  @override
  SpotubeSimpleArtistObject get field0;

  /// Create a copy of SpotubeBrowseSectionResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImplCopyWith<
          _$SpotubeBrowseSectionResponseObjectItem_ArtistSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
