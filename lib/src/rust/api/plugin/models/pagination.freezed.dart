// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpotubePaginationResponseObject {
  int get limit => throw _privateConstructorUsedError;
  int? get nextOffset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  List<SpotubePaginationResponseObjectItem> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of SpotubePaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubePaginationResponseObjectCopyWith<SpotubePaginationResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubePaginationResponseObjectCopyWith<$Res> {
  factory $SpotubePaginationResponseObjectCopyWith(
          SpotubePaginationResponseObject value,
          $Res Function(SpotubePaginationResponseObject) then) =
      _$SpotubePaginationResponseObjectCopyWithImpl<$Res,
          SpotubePaginationResponseObject>;
  @useResult
  $Res call(
      {int limit,
      int? nextOffset,
      int total,
      bool hasMore,
      List<SpotubePaginationResponseObjectItem> items});
}

/// @nodoc
class _$SpotubePaginationResponseObjectCopyWithImpl<$Res,
        $Val extends SpotubePaginationResponseObject>
    implements $SpotubePaginationResponseObjectCopyWith<$Res> {
  _$SpotubePaginationResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubePaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? nextOffset = freezed,
    Object? total = null,
    Object? hasMore = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SpotubePaginationResponseObjectItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectImplCopyWith<$Res>
    implements $SpotubePaginationResponseObjectCopyWith<$Res> {
  factory _$$SpotubePaginationResponseObjectImplCopyWith(
          _$SpotubePaginationResponseObjectImpl value,
          $Res Function(_$SpotubePaginationResponseObjectImpl) then) =
      __$$SpotubePaginationResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int limit,
      int? nextOffset,
      int total,
      bool hasMore,
      List<SpotubePaginationResponseObjectItem> items});
}

/// @nodoc
class __$$SpotubePaginationResponseObjectImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectImpl>
    implements _$$SpotubePaginationResponseObjectImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectImplCopyWithImpl(
      _$SpotubePaginationResponseObjectImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? nextOffset = freezed,
    Object? total = null,
    Object? hasMore = null,
    Object? items = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SpotubePaginationResponseObjectItem>,
    ));
  }
}

/// @nodoc

class _$SpotubePaginationResponseObjectImpl
    implements _SpotubePaginationResponseObject {
  const _$SpotubePaginationResponseObjectImpl(
      {required this.limit,
      this.nextOffset,
      required this.total,
      required this.hasMore,
      required final List<SpotubePaginationResponseObjectItem> items})
      : _items = items;

  @override
  final int limit;
  @override
  final int? nextOffset;
  @override
  final int total;
  @override
  final bool hasMore;
  final List<SpotubePaginationResponseObjectItem> _items;
  @override
  List<SpotubePaginationResponseObjectItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SpotubePaginationResponseObject(limit: $limit, nextOffset: $nextOffset, total: $total, hasMore: $hasMore, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, nextOffset, total,
      hasMore, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SpotubePaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectImplCopyWith<
          _$SpotubePaginationResponseObjectImpl>
      get copyWith => __$$SpotubePaginationResponseObjectImplCopyWithImpl<
          _$SpotubePaginationResponseObjectImpl>(this, _$identity);
}

abstract class _SpotubePaginationResponseObject
    implements SpotubePaginationResponseObject {
  const factory _SpotubePaginationResponseObject(
          {required final int limit,
          final int? nextOffset,
          required final int total,
          required final bool hasMore,
          required final List<SpotubePaginationResponseObjectItem> items}) =
      _$SpotubePaginationResponseObjectImpl;

  @override
  int get limit;
  @override
  int? get nextOffset;
  @override
  int get total;
  @override
  bool get hasMore;
  @override
  List<SpotubePaginationResponseObjectItem> get items;

  /// Create a copy of SpotubePaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectImplCopyWith<
          _$SpotubePaginationResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpotubePaginationResponseObjectItem {
  Object get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubePaginationResponseObjectItemCopyWith<$Res> {
  factory $SpotubePaginationResponseObjectItemCopyWith(
          SpotubePaginationResponseObjectItem value,
          $Res Function(SpotubePaginationResponseObjectItem) then) =
      _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
          SpotubePaginationResponseObjectItem>;
}

/// @nodoc
class _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        $Val extends SpotubePaginationResponseObjectItem>
    implements $SpotubePaginationResponseObjectItemCopyWith<$Res> {
  _$SpotubePaginationResponseObjectItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_TrackImplCopyWith<$Res> {
  factory _$$SpotubePaginationResponseObjectItem_TrackImplCopyWith(
          _$SpotubePaginationResponseObjectItem_TrackImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_TrackImpl) then) =
      __$$SpotubePaginationResponseObjectItem_TrackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeFullTrackObject field0});

  $SpotubeFullTrackObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_TrackImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_TrackImpl>
    implements _$$SpotubePaginationResponseObjectItem_TrackImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_TrackImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_TrackImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_TrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_TrackImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullTrackObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_TrackImpl
    extends SpotubePaginationResponseObjectItem_Track {
  const _$SpotubePaginationResponseObjectItem_TrackImpl(this.field0)
      : super._();

  @override
  final SpotubeFullTrackObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.track(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_TrackImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_TrackImplCopyWith<
          _$SpotubePaginationResponseObjectItem_TrackImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_TrackImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_TrackImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return track(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return track?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return track(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return track?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (track != null) {
      return track(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_Track
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_Track(
          final SpotubeFullTrackObject field0) =
      _$SpotubePaginationResponseObjectItem_TrackImpl;
  const SpotubePaginationResponseObjectItem_Track._() : super._();

  @override
  SpotubeFullTrackObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_TrackImplCopyWith<
          _$SpotubePaginationResponseObjectItem_TrackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWith(
          _$SpotubePaginationResponseObjectItem_PlaylistFullImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_PlaylistFullImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeFullPlaylistObject field0});

  $SpotubeFullPlaylistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_PlaylistFullImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_PlaylistFullImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_PlaylistFullImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_PlaylistFullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullPlaylistObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_PlaylistFullImpl
    extends SpotubePaginationResponseObjectItem_PlaylistFull {
  const _$SpotubePaginationResponseObjectItem_PlaylistFullImpl(this.field0)
      : super._();

  @override
  final SpotubeFullPlaylistObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.playlistFull(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_PlaylistFullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWith<
          _$SpotubePaginationResponseObjectItem_PlaylistFullImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_PlaylistFullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return playlistFull(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return playlistFull?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return playlistFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return playlistFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (playlistFull != null) {
      return playlistFull(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_PlaylistFull
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_PlaylistFull(
          final SpotubeFullPlaylistObject field0) =
      _$SpotubePaginationResponseObjectItem_PlaylistFullImpl;
  const SpotubePaginationResponseObjectItem_PlaylistFull._() : super._();

  @override
  SpotubeFullPlaylistObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_PlaylistFullImplCopyWith<
          _$SpotubePaginationResponseObjectItem_PlaylistFullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWith(
          _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl value,
          $Res Function(
                  _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeSimplePlaylistObject field0});

  $SpotubeSimplePlaylistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWithImpl<
        $Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWith<
            $Res> {
  __$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeSimplePlaylistObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl
    extends SpotubePaginationResponseObjectItem_PlaylistSimple {
  const _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl(this.field0)
      : super._();

  @override
  final SpotubeSimplePlaylistObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.playlistSimple(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWith<
          _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return playlistSimple(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return playlistSimple?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return playlistSimple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return playlistSimple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (playlistSimple != null) {
      return playlistSimple(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_PlaylistSimple
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_PlaylistSimple(
          final SpotubeSimplePlaylistObject field0) =
      _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl;
  const SpotubePaginationResponseObjectItem_PlaylistSimple._() : super._();

  @override
  SpotubeSimplePlaylistObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_PlaylistSimpleImplCopyWith<
          _$SpotubePaginationResponseObjectItem_PlaylistSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWith(
          _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_AlbumSimpleImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeSimpleAlbumObject field0});

  $SpotubeSimpleAlbumObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_AlbumSimpleImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_AlbumSimpleImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleAlbumObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl
    extends SpotubePaginationResponseObjectItem_AlbumSimple {
  const _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl(this.field0)
      : super._();

  @override
  final SpotubeSimpleAlbumObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.albumSimple(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWith<
          _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return albumSimple(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return albumSimple?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return albumSimple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return albumSimple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (albumSimple != null) {
      return albumSimple(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_AlbumSimple
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_AlbumSimple(
          final SpotubeSimpleAlbumObject field0) =
      _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl;
  const SpotubePaginationResponseObjectItem_AlbumSimple._() : super._();

  @override
  SpotubeSimpleAlbumObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_AlbumSimpleImplCopyWith<
          _$SpotubePaginationResponseObjectItem_AlbumSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWith(
          _$SpotubePaginationResponseObjectItem_AlbumFullImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_AlbumFullImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeFullAlbumObject field0});

  $SpotubeFullAlbumObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_AlbumFullImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_AlbumFullImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_AlbumFullImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_AlbumFullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullAlbumObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_AlbumFullImpl
    extends SpotubePaginationResponseObjectItem_AlbumFull {
  const _$SpotubePaginationResponseObjectItem_AlbumFullImpl(this.field0)
      : super._();

  @override
  final SpotubeFullAlbumObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.albumFull(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_AlbumFullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWith<
          _$SpotubePaginationResponseObjectItem_AlbumFullImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_AlbumFullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return albumFull(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return albumFull?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return albumFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return albumFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (albumFull != null) {
      return albumFull(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_AlbumFull
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_AlbumFull(
          final SpotubeFullAlbumObject field0) =
      _$SpotubePaginationResponseObjectItem_AlbumFullImpl;
  const SpotubePaginationResponseObjectItem_AlbumFull._() : super._();

  @override
  SpotubeFullAlbumObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_AlbumFullImplCopyWith<
          _$SpotubePaginationResponseObjectItem_AlbumFullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWith(
          _$SpotubePaginationResponseObjectItem_ArtistFullImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_ArtistFullImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotubeFullArtistObject field0});

  $SpotubeFullArtistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_ArtistFullImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_ArtistFullImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_ArtistFullImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_ArtistFullImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeFullArtistObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_ArtistFullImpl
    extends SpotubePaginationResponseObjectItem_ArtistFull {
  const _$SpotubePaginationResponseObjectItem_ArtistFullImpl(this.field0)
      : super._();

  @override
  final SpotubeFullArtistObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.artistFull(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_ArtistFullImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWith<
          _$SpotubePaginationResponseObjectItem_ArtistFullImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_ArtistFullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return artistFull(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return artistFull?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return artistFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return artistFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (artistFull != null) {
      return artistFull(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_ArtistFull
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_ArtistFull(
          final SpotubeFullArtistObject field0) =
      _$SpotubePaginationResponseObjectItem_ArtistFullImpl;
  const SpotubePaginationResponseObjectItem_ArtistFull._() : super._();

  @override
  SpotubeFullArtistObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_ArtistFullImplCopyWith<
          _$SpotubePaginationResponseObjectItem_ArtistFullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWith(
          _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_ArtistSimpleImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeSimpleArtistObject field0});

  $SpotubeSimpleArtistObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWithImpl<$Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_ArtistSimpleImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_ArtistSimpleImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeSimpleArtistObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
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

class _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl
    extends SpotubePaginationResponseObjectItem_ArtistSimple {
  const _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl(this.field0)
      : super._();

  @override
  final SpotubeSimpleArtistObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.artistSimple(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWith<
          _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return artistSimple(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return artistSimple?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
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
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return artistSimple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return artistSimple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (artistSimple != null) {
      return artistSimple(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_ArtistSimple
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_ArtistSimple(
          final SpotubeSimpleArtistObject field0) =
      _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl;
  const SpotubePaginationResponseObjectItem_ArtistSimple._() : super._();

  @override
  SpotubeSimpleArtistObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_ArtistSimpleImplCopyWith<
          _$SpotubePaginationResponseObjectItem_ArtistSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWith<
    $Res> {
  factory _$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWith(
          _$SpotubePaginationResponseObjectItem_BrowseSectionImpl value,
          $Res Function(_$SpotubePaginationResponseObjectItem_BrowseSectionImpl)
              then) =
      __$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({SpotubeBrowseSectionObject field0});

  $SpotubeBrowseSectionObjectCopyWith<$Res> get field0;
}

/// @nodoc
class __$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWithImpl<
        $Res>
    extends _$SpotubePaginationResponseObjectItemCopyWithImpl<$Res,
        _$SpotubePaginationResponseObjectItem_BrowseSectionImpl>
    implements
        _$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWith<$Res> {
  __$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWithImpl(
      _$SpotubePaginationResponseObjectItem_BrowseSectionImpl _value,
      $Res Function(_$SpotubePaginationResponseObjectItem_BrowseSectionImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$SpotubePaginationResponseObjectItem_BrowseSectionImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SpotubeBrowseSectionObject,
    ));
  }

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeBrowseSectionObjectCopyWith<$Res> get field0 {
    return $SpotubeBrowseSectionObjectCopyWith<$Res>(_value.field0, (value) {
      return _then(_value.copyWith(field0: value));
    });
  }
}

/// @nodoc

class _$SpotubePaginationResponseObjectItem_BrowseSectionImpl
    extends SpotubePaginationResponseObjectItem_BrowseSection {
  const _$SpotubePaginationResponseObjectItem_BrowseSectionImpl(this.field0)
      : super._();

  @override
  final SpotubeBrowseSectionObject field0;

  @override
  String toString() {
    return 'SpotubePaginationResponseObjectItem.browseSection(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubePaginationResponseObjectItem_BrowseSectionImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWith<
          _$SpotubePaginationResponseObjectItem_BrowseSectionImpl>
      get copyWith =>
          __$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWithImpl<
                  _$SpotubePaginationResponseObjectItem_BrowseSectionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeFullTrackObject field0) track,
    required TResult Function(SpotubeFullPlaylistObject field0) playlistFull,
    required TResult Function(SpotubeSimplePlaylistObject field0)
        playlistSimple,
    required TResult Function(SpotubeSimpleAlbumObject field0) albumSimple,
    required TResult Function(SpotubeFullAlbumObject field0) albumFull,
    required TResult Function(SpotubeFullArtistObject field0) artistFull,
    required TResult Function(SpotubeSimpleArtistObject field0) artistSimple,
    required TResult Function(SpotubeBrowseSectionObject field0) browseSection,
  }) {
    return browseSection(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeFullTrackObject field0)? track,
    TResult? Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult? Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult? Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult? Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult? Function(SpotubeFullArtistObject field0)? artistFull,
    TResult? Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult? Function(SpotubeBrowseSectionObject field0)? browseSection,
  }) {
    return browseSection?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeFullTrackObject field0)? track,
    TResult Function(SpotubeFullPlaylistObject field0)? playlistFull,
    TResult Function(SpotubeSimplePlaylistObject field0)? playlistSimple,
    TResult Function(SpotubeSimpleAlbumObject field0)? albumSimple,
    TResult Function(SpotubeFullAlbumObject field0)? albumFull,
    TResult Function(SpotubeFullArtistObject field0)? artistFull,
    TResult Function(SpotubeSimpleArtistObject field0)? artistSimple,
    TResult Function(SpotubeBrowseSectionObject field0)? browseSection,
    required TResult orElse(),
  }) {
    if (browseSection != null) {
      return browseSection(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubePaginationResponseObjectItem_Track value)
        track,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistFull value)
        playlistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_PlaylistSimple value)
        playlistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumSimple value)
        albumSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_AlbumFull value)
        albumFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistFull value)
        artistFull,
    required TResult Function(
            SpotubePaginationResponseObjectItem_ArtistSimple value)
        artistSimple,
    required TResult Function(
            SpotubePaginationResponseObjectItem_BrowseSection value)
        browseSection,
  }) {
    return browseSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult? Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult? Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
  }) {
    return browseSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubePaginationResponseObjectItem_Track value)? track,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistFull value)?
        playlistFull,
    TResult Function(SpotubePaginationResponseObjectItem_PlaylistSimple value)?
        playlistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumSimple value)?
        albumSimple,
    TResult Function(SpotubePaginationResponseObjectItem_AlbumFull value)?
        albumFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistFull value)?
        artistFull,
    TResult Function(SpotubePaginationResponseObjectItem_ArtistSimple value)?
        artistSimple,
    TResult Function(SpotubePaginationResponseObjectItem_BrowseSection value)?
        browseSection,
    required TResult orElse(),
  }) {
    if (browseSection != null) {
      return browseSection(this);
    }
    return orElse();
  }
}

abstract class SpotubePaginationResponseObjectItem_BrowseSection
    extends SpotubePaginationResponseObjectItem {
  const factory SpotubePaginationResponseObjectItem_BrowseSection(
          final SpotubeBrowseSectionObject field0) =
      _$SpotubePaginationResponseObjectItem_BrowseSectionImpl;
  const SpotubePaginationResponseObjectItem_BrowseSection._() : super._();

  @override
  SpotubeBrowseSectionObject get field0;

  /// Create a copy of SpotubePaginationResponseObjectItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubePaginationResponseObjectItem_BrowseSectionImplCopyWith<
          _$SpotubePaginationResponseObjectItem_BrowseSectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
