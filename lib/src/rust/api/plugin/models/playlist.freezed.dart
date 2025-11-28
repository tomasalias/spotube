// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeFullPlaylistObject _$SpotubeFullPlaylistObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeFullPlaylistObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeFullPlaylistObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  SpotubeUserObject get owner => throw _privateConstructorUsedError;
  List<SpotubeImageObject> get images => throw _privateConstructorUsedError;
  List<SpotubeUserObject> get collaborators =>
      throw _privateConstructorUsedError;
  bool get collaborative => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;

  /// Serializes this SpotubeFullPlaylistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeFullPlaylistObjectCopyWith<SpotubeFullPlaylistObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeFullPlaylistObjectCopyWith<$Res> {
  factory $SpotubeFullPlaylistObjectCopyWith(SpotubeFullPlaylistObject value,
          $Res Function(SpotubeFullPlaylistObject) then) =
      _$SpotubeFullPlaylistObjectCopyWithImpl<$Res, SpotubeFullPlaylistObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String description,
      String externalUri,
      SpotubeUserObject owner,
      List<SpotubeImageObject> images,
      List<SpotubeUserObject> collaborators,
      bool collaborative,
      bool public});

  $SpotubeUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class _$SpotubeFullPlaylistObjectCopyWithImpl<$Res,
        $Val extends SpotubeFullPlaylistObject>
    implements $SpotubeFullPlaylistObjectCopyWith<$Res> {
  _$SpotubeFullPlaylistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
    Object? collaborators = null,
    Object? collaborative = null,
    Object? public = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SpotubeUserObject,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      collaborators: null == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<SpotubeUserObject>,
      collaborative: null == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SpotubeFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeUserObjectCopyWith<$Res> get owner {
    return $SpotubeUserObjectCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotubeFullPlaylistObjectImplCopyWith<$Res>
    implements $SpotubeFullPlaylistObjectCopyWith<$Res> {
  factory _$$SpotubeFullPlaylistObjectImplCopyWith(
          _$SpotubeFullPlaylistObjectImpl value,
          $Res Function(_$SpotubeFullPlaylistObjectImpl) then) =
      __$$SpotubeFullPlaylistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String description,
      String externalUri,
      SpotubeUserObject owner,
      List<SpotubeImageObject> images,
      List<SpotubeUserObject> collaborators,
      bool collaborative,
      bool public});

  @override
  $SpotubeUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class __$$SpotubeFullPlaylistObjectImplCopyWithImpl<$Res>
    extends _$SpotubeFullPlaylistObjectCopyWithImpl<$Res,
        _$SpotubeFullPlaylistObjectImpl>
    implements _$$SpotubeFullPlaylistObjectImplCopyWith<$Res> {
  __$$SpotubeFullPlaylistObjectImplCopyWithImpl(
      _$SpotubeFullPlaylistObjectImpl _value,
      $Res Function(_$SpotubeFullPlaylistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
    Object? collaborators = null,
    Object? collaborative = null,
    Object? public = null,
  }) {
    return _then(_$SpotubeFullPlaylistObjectImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SpotubeUserObject,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
      collaborators: null == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<SpotubeUserObject>,
      collaborative: null == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeFullPlaylistObjectImpl implements _SpotubeFullPlaylistObject {
  const _$SpotubeFullPlaylistObjectImpl(
      {required this.typeName,
      required this.id,
      required this.name,
      required this.description,
      required this.externalUri,
      required this.owner,
      required final List<SpotubeImageObject> images,
      required final List<SpotubeUserObject> collaborators,
      required this.collaborative,
      required this.public})
      : _images = images,
        _collaborators = collaborators;

  factory _$SpotubeFullPlaylistObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotubeFullPlaylistObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String externalUri;
  @override
  final SpotubeUserObject owner;
  final List<SpotubeImageObject> _images;
  @override
  List<SpotubeImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<SpotubeUserObject> _collaborators;
  @override
  List<SpotubeUserObject> get collaborators {
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaborators);
  }

  @override
  final bool collaborative;
  @override
  final bool public;

  @override
  String toString() {
    return 'SpotubeFullPlaylistObject(typeName: $typeName, id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images, collaborators: $collaborators, collaborative: $collaborative, public: $public)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeFullPlaylistObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
            (identical(other.collaborative, collaborative) ||
                other.collaborative == collaborative) &&
            (identical(other.public, public) || other.public == public));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeName,
      id,
      name,
      description,
      externalUri,
      owner,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_collaborators),
      collaborative,
      public);

  /// Create a copy of SpotubeFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeFullPlaylistObjectImplCopyWith<_$SpotubeFullPlaylistObjectImpl>
      get copyWith => __$$SpotubeFullPlaylistObjectImplCopyWithImpl<
          _$SpotubeFullPlaylistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeFullPlaylistObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeFullPlaylistObject implements SpotubeFullPlaylistObject {
  const factory _SpotubeFullPlaylistObject(
      {required final String typeName,
      required final String id,
      required final String name,
      required final String description,
      required final String externalUri,
      required final SpotubeUserObject owner,
      required final List<SpotubeImageObject> images,
      required final List<SpotubeUserObject> collaborators,
      required final bool collaborative,
      required final bool public}) = _$SpotubeFullPlaylistObjectImpl;

  factory _SpotubeFullPlaylistObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeFullPlaylistObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get externalUri;
  @override
  SpotubeUserObject get owner;
  @override
  List<SpotubeImageObject> get images;
  @override
  List<SpotubeUserObject> get collaborators;
  @override
  bool get collaborative;
  @override
  bool get public;

  /// Create a copy of SpotubeFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeFullPlaylistObjectImplCopyWith<_$SpotubeFullPlaylistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeSimplePlaylistObject _$SpotubeSimplePlaylistObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeSimplePlaylistObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeSimplePlaylistObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  SpotubeUserObject get owner => throw _privateConstructorUsedError;
  List<SpotubeImageObject> get images => throw _privateConstructorUsedError;

  /// Serializes this SpotubeSimplePlaylistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeSimplePlaylistObjectCopyWith<SpotubeSimplePlaylistObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeSimplePlaylistObjectCopyWith<$Res> {
  factory $SpotubeSimplePlaylistObjectCopyWith(
          SpotubeSimplePlaylistObject value,
          $Res Function(SpotubeSimplePlaylistObject) then) =
      _$SpotubeSimplePlaylistObjectCopyWithImpl<$Res,
          SpotubeSimplePlaylistObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String description,
      String externalUri,
      SpotubeUserObject owner,
      List<SpotubeImageObject> images});

  $SpotubeUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class _$SpotubeSimplePlaylistObjectCopyWithImpl<$Res,
        $Val extends SpotubeSimplePlaylistObject>
    implements $SpotubeSimplePlaylistObjectCopyWith<$Res> {
  _$SpotubeSimplePlaylistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SpotubeUserObject,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
    ) as $Val);
  }

  /// Create a copy of SpotubeSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotubeUserObjectCopyWith<$Res> get owner {
    return $SpotubeUserObjectCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotubeSimplePlaylistObjectImplCopyWith<$Res>
    implements $SpotubeSimplePlaylistObjectCopyWith<$Res> {
  factory _$$SpotubeSimplePlaylistObjectImplCopyWith(
          _$SpotubeSimplePlaylistObjectImpl value,
          $Res Function(_$SpotubeSimplePlaylistObjectImpl) then) =
      __$$SpotubeSimplePlaylistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String name,
      String description,
      String externalUri,
      SpotubeUserObject owner,
      List<SpotubeImageObject> images});

  @override
  $SpotubeUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class __$$SpotubeSimplePlaylistObjectImplCopyWithImpl<$Res>
    extends _$SpotubeSimplePlaylistObjectCopyWithImpl<$Res,
        _$SpotubeSimplePlaylistObjectImpl>
    implements _$$SpotubeSimplePlaylistObjectImplCopyWith<$Res> {
  __$$SpotubeSimplePlaylistObjectImplCopyWithImpl(
      _$SpotubeSimplePlaylistObjectImpl _value,
      $Res Function(_$SpotubeSimplePlaylistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
  }) {
    return _then(_$SpotubeSimplePlaylistObjectImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SpotubeUserObject,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotubeImageObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeSimplePlaylistObjectImpl
    implements _SpotubeSimplePlaylistObject {
  const _$SpotubeSimplePlaylistObjectImpl(
      {required this.typeName,
      required this.id,
      required this.name,
      required this.description,
      required this.externalUri,
      required this.owner,
      required final List<SpotubeImageObject> images})
      : _images = images;

  factory _$SpotubeSimplePlaylistObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeSimplePlaylistObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String externalUri;
  @override
  final SpotubeUserObject owner;
  final List<SpotubeImageObject> _images;
  @override
  List<SpotubeImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SpotubeSimplePlaylistObject(typeName: $typeName, id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeSimplePlaylistObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeName, id, name, description,
      externalUri, owner, const DeepCollectionEquality().hash(_images));

  /// Create a copy of SpotubeSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeSimplePlaylistObjectImplCopyWith<_$SpotubeSimplePlaylistObjectImpl>
      get copyWith => __$$SpotubeSimplePlaylistObjectImplCopyWithImpl<
          _$SpotubeSimplePlaylistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeSimplePlaylistObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeSimplePlaylistObject
    implements SpotubeSimplePlaylistObject {
  const factory _SpotubeSimplePlaylistObject(
          {required final String typeName,
          required final String id,
          required final String name,
          required final String description,
          required final String externalUri,
          required final SpotubeUserObject owner,
          required final List<SpotubeImageObject> images}) =
      _$SpotubeSimplePlaylistObjectImpl;

  factory _SpotubeSimplePlaylistObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeSimplePlaylistObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get externalUri;
  @override
  SpotubeUserObject get owner;
  @override
  List<SpotubeImageObject> get images;

  /// Create a copy of SpotubeSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeSimplePlaylistObjectImplCopyWith<_$SpotubeSimplePlaylistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
