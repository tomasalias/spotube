// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PluginConfiguration _$PluginConfigurationFromJson(Map<String, dynamic> json) {
  return _PluginConfiguration.fromJson(json);
}

/// @nodoc
mixin _$PluginConfiguration {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get entryPoint => throw _privateConstructorUsedError;
  String get pluginApiVersion => throw _privateConstructorUsedError;
  List<PluginApi> get apis => throw _privateConstructorUsedError;
  List<PluginAbility> get abilities => throw _privateConstructorUsedError;
  String? get repository => throw _privateConstructorUsedError;

  /// Serializes this PluginConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PluginConfigurationCopyWith<PluginConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PluginConfigurationCopyWith<$Res> {
  factory $PluginConfigurationCopyWith(
          PluginConfiguration value, $Res Function(PluginConfiguration) then) =
      _$PluginConfigurationCopyWithImpl<$Res, PluginConfiguration>;
  @useResult
  $Res call(
      {String name,
      String description,
      String version,
      String author,
      String entryPoint,
      String pluginApiVersion,
      List<PluginApi> apis,
      List<PluginAbility> abilities,
      String? repository});
}

/// @nodoc
class _$PluginConfigurationCopyWithImpl<$Res, $Val extends PluginConfiguration>
    implements $PluginConfigurationCopyWith<$Res> {
  _$PluginConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? version = null,
    Object? author = null,
    Object? entryPoint = null,
    Object? pluginApiVersion = null,
    Object? apis = null,
    Object? abilities = null,
    Object? repository = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as String,
      pluginApiVersion: null == pluginApiVersion
          ? _value.pluginApiVersion
          : pluginApiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apis: null == apis
          ? _value.apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<PluginApi>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PluginAbility>,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PluginConfigurationImplCopyWith<$Res>
    implements $PluginConfigurationCopyWith<$Res> {
  factory _$$PluginConfigurationImplCopyWith(_$PluginConfigurationImpl value,
          $Res Function(_$PluginConfigurationImpl) then) =
      __$$PluginConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String version,
      String author,
      String entryPoint,
      String pluginApiVersion,
      List<PluginApi> apis,
      List<PluginAbility> abilities,
      String? repository});
}

/// @nodoc
class __$$PluginConfigurationImplCopyWithImpl<$Res>
    extends _$PluginConfigurationCopyWithImpl<$Res, _$PluginConfigurationImpl>
    implements _$$PluginConfigurationImplCopyWith<$Res> {
  __$$PluginConfigurationImplCopyWithImpl(_$PluginConfigurationImpl _value,
      $Res Function(_$PluginConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? version = null,
    Object? author = null,
    Object? entryPoint = null,
    Object? pluginApiVersion = null,
    Object? apis = null,
    Object? abilities = null,
    Object? repository = freezed,
  }) {
    return _then(_$PluginConfigurationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as String,
      pluginApiVersion: null == pluginApiVersion
          ? _value.pluginApiVersion
          : pluginApiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apis: null == apis
          ? _value._apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<PluginApi>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PluginAbility>,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PluginConfigurationImpl extends _PluginConfiguration {
  const _$PluginConfigurationImpl(
      {required this.name,
      required this.description,
      required this.version,
      required this.author,
      required this.entryPoint,
      required this.pluginApiVersion,
      required final List<PluginApi> apis,
      required final List<PluginAbility> abilities,
      this.repository})
      : _apis = apis,
        _abilities = abilities,
        super._();

  factory _$PluginConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PluginConfigurationImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String version;
  @override
  final String author;
  @override
  final String entryPoint;
  @override
  final String pluginApiVersion;
  final List<PluginApi> _apis;
  @override
  List<PluginApi> get apis {
    if (_apis is EqualUnmodifiableListView) return _apis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apis);
  }

  final List<PluginAbility> _abilities;
  @override
  List<PluginAbility> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final String? repository;

  @override
  String toString() {
    return 'PluginConfiguration(name: $name, description: $description, version: $version, author: $author, entryPoint: $entryPoint, pluginApiVersion: $pluginApiVersion, apis: $apis, abilities: $abilities, repository: $repository)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PluginConfigurationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.entryPoint, entryPoint) ||
                other.entryPoint == entryPoint) &&
            (identical(other.pluginApiVersion, pluginApiVersion) ||
                other.pluginApiVersion == pluginApiVersion) &&
            const DeepCollectionEquality().equals(other._apis, _apis) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.repository, repository) ||
                other.repository == repository));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      version,
      author,
      entryPoint,
      pluginApiVersion,
      const DeepCollectionEquality().hash(_apis),
      const DeepCollectionEquality().hash(_abilities),
      repository);

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PluginConfigurationImplCopyWith<_$PluginConfigurationImpl> get copyWith =>
      __$$PluginConfigurationImplCopyWithImpl<_$PluginConfigurationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PluginConfigurationImplToJson(
      this,
    );
  }
}

abstract class _PluginConfiguration extends PluginConfiguration {
  const factory _PluginConfiguration(
      {required final String name,
      required final String description,
      required final String version,
      required final String author,
      required final String entryPoint,
      required final String pluginApiVersion,
      required final List<PluginApi> apis,
      required final List<PluginAbility> abilities,
      final String? repository}) = _$PluginConfigurationImpl;
  const _PluginConfiguration._() : super._();

  factory _PluginConfiguration.fromJson(Map<String, dynamic> json) =
      _$PluginConfigurationImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get version;
  @override
  String get author;
  @override
  String get entryPoint;
  @override
  String get pluginApiVersion;
  @override
  List<PluginApi> get apis;
  @override
  List<PluginAbility> get abilities;
  @override
  String? get repository;

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PluginConfigurationImplCopyWith<_$PluginConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PluginUpdateAvailable _$PluginUpdateAvailableFromJson(
    Map<String, dynamic> json) {
  return _PluginUpdateAvailable.fromJson(json);
}

/// @nodoc
mixin _$PluginUpdateAvailable {
  String get downloadUrl => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String? get changelog => throw _privateConstructorUsedError;

  /// Serializes this PluginUpdateAvailable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PluginUpdateAvailableCopyWith<PluginUpdateAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PluginUpdateAvailableCopyWith<$Res> {
  factory $PluginUpdateAvailableCopyWith(PluginUpdateAvailable value,
          $Res Function(PluginUpdateAvailable) then) =
      _$PluginUpdateAvailableCopyWithImpl<$Res, PluginUpdateAvailable>;
  @useResult
  $Res call({String downloadUrl, String version, String? changelog});
}

/// @nodoc
class _$PluginUpdateAvailableCopyWithImpl<$Res,
        $Val extends PluginUpdateAvailable>
    implements $PluginUpdateAvailableCopyWith<$Res> {
  _$PluginUpdateAvailableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? version = null,
    Object? changelog = freezed,
  }) {
    return _then(_value.copyWith(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PluginUpdateAvailableImplCopyWith<$Res>
    implements $PluginUpdateAvailableCopyWith<$Res> {
  factory _$$PluginUpdateAvailableImplCopyWith(
          _$PluginUpdateAvailableImpl value,
          $Res Function(_$PluginUpdateAvailableImpl) then) =
      __$$PluginUpdateAvailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String downloadUrl, String version, String? changelog});
}

/// @nodoc
class __$$PluginUpdateAvailableImplCopyWithImpl<$Res>
    extends _$PluginUpdateAvailableCopyWithImpl<$Res,
        _$PluginUpdateAvailableImpl>
    implements _$$PluginUpdateAvailableImplCopyWith<$Res> {
  __$$PluginUpdateAvailableImplCopyWithImpl(_$PluginUpdateAvailableImpl _value,
      $Res Function(_$PluginUpdateAvailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? version = null,
    Object? changelog = freezed,
  }) {
    return _then(_$PluginUpdateAvailableImpl(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PluginUpdateAvailableImpl implements _PluginUpdateAvailable {
  const _$PluginUpdateAvailableImpl(
      {required this.downloadUrl, required this.version, this.changelog});

  factory _$PluginUpdateAvailableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PluginUpdateAvailableImplFromJson(json);

  @override
  final String downloadUrl;
  @override
  final String version;
  @override
  final String? changelog;

  @override
  String toString() {
    return 'PluginUpdateAvailable(downloadUrl: $downloadUrl, version: $version, changelog: $changelog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PluginUpdateAvailableImpl &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.changelog, changelog) ||
                other.changelog == changelog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, downloadUrl, version, changelog);

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PluginUpdateAvailableImplCopyWith<_$PluginUpdateAvailableImpl>
      get copyWith => __$$PluginUpdateAvailableImplCopyWithImpl<
          _$PluginUpdateAvailableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PluginUpdateAvailableImplToJson(
      this,
    );
  }
}

abstract class _PluginUpdateAvailable implements PluginUpdateAvailable {
  const factory _PluginUpdateAvailable(
      {required final String downloadUrl,
      required final String version,
      final String? changelog}) = _$PluginUpdateAvailableImpl;

  factory _PluginUpdateAvailable.fromJson(Map<String, dynamic> json) =
      _$PluginUpdateAvailableImpl.fromJson;

  @override
  String get downloadUrl;
  @override
  String get version;
  @override
  String? get changelog;

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PluginUpdateAvailableImplCopyWith<_$PluginUpdateAvailableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScrobbleAlbum _$ScrobbleAlbumFromJson(Map<String, dynamic> json) {
  return _ScrobbleAlbum.fromJson(json);
}

/// @nodoc
mixin _$ScrobbleAlbum {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ScrobbleAlbum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScrobbleAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrobbleAlbumCopyWith<ScrobbleAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrobbleAlbumCopyWith<$Res> {
  factory $ScrobbleAlbumCopyWith(
          ScrobbleAlbum value, $Res Function(ScrobbleAlbum) then) =
      _$ScrobbleAlbumCopyWithImpl<$Res, ScrobbleAlbum>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ScrobbleAlbumCopyWithImpl<$Res, $Val extends ScrobbleAlbum>
    implements $ScrobbleAlbumCopyWith<$Res> {
  _$ScrobbleAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrobbleAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrobbleAlbumImplCopyWith<$Res>
    implements $ScrobbleAlbumCopyWith<$Res> {
  factory _$$ScrobbleAlbumImplCopyWith(
          _$ScrobbleAlbumImpl value, $Res Function(_$ScrobbleAlbumImpl) then) =
      __$$ScrobbleAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ScrobbleAlbumImplCopyWithImpl<$Res>
    extends _$ScrobbleAlbumCopyWithImpl<$Res, _$ScrobbleAlbumImpl>
    implements _$$ScrobbleAlbumImplCopyWith<$Res> {
  __$$ScrobbleAlbumImplCopyWithImpl(
      _$ScrobbleAlbumImpl _value, $Res Function(_$ScrobbleAlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrobbleAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ScrobbleAlbumImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScrobbleAlbumImpl implements _ScrobbleAlbum {
  const _$ScrobbleAlbumImpl({required this.id, required this.name});

  factory _$ScrobbleAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScrobbleAlbumImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ScrobbleAlbum(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrobbleAlbumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ScrobbleAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrobbleAlbumImplCopyWith<_$ScrobbleAlbumImpl> get copyWith =>
      __$$ScrobbleAlbumImplCopyWithImpl<_$ScrobbleAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScrobbleAlbumImplToJson(
      this,
    );
  }
}

abstract class _ScrobbleAlbum implements ScrobbleAlbum {
  const factory _ScrobbleAlbum(
      {required final String id,
      required final String name}) = _$ScrobbleAlbumImpl;

  factory _ScrobbleAlbum.fromJson(Map<String, dynamic> json) =
      _$ScrobbleAlbumImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of ScrobbleAlbum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrobbleAlbumImplCopyWith<_$ScrobbleAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScrobbleArtist _$ScrobbleArtistFromJson(Map<String, dynamic> json) {
  return _ScrobbleArtist.fromJson(json);
}

/// @nodoc
mixin _$ScrobbleArtist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ScrobbleArtist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScrobbleArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrobbleArtistCopyWith<ScrobbleArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrobbleArtistCopyWith<$Res> {
  factory $ScrobbleArtistCopyWith(
          ScrobbleArtist value, $Res Function(ScrobbleArtist) then) =
      _$ScrobbleArtistCopyWithImpl<$Res, ScrobbleArtist>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ScrobbleArtistCopyWithImpl<$Res, $Val extends ScrobbleArtist>
    implements $ScrobbleArtistCopyWith<$Res> {
  _$ScrobbleArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrobbleArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrobbleArtistImplCopyWith<$Res>
    implements $ScrobbleArtistCopyWith<$Res> {
  factory _$$ScrobbleArtistImplCopyWith(_$ScrobbleArtistImpl value,
          $Res Function(_$ScrobbleArtistImpl) then) =
      __$$ScrobbleArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ScrobbleArtistImplCopyWithImpl<$Res>
    extends _$ScrobbleArtistCopyWithImpl<$Res, _$ScrobbleArtistImpl>
    implements _$$ScrobbleArtistImplCopyWith<$Res> {
  __$$ScrobbleArtistImplCopyWithImpl(
      _$ScrobbleArtistImpl _value, $Res Function(_$ScrobbleArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrobbleArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ScrobbleArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScrobbleArtistImpl implements _ScrobbleArtist {
  const _$ScrobbleArtistImpl({required this.id, required this.name});

  factory _$ScrobbleArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScrobbleArtistImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ScrobbleArtist(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrobbleArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ScrobbleArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrobbleArtistImplCopyWith<_$ScrobbleArtistImpl> get copyWith =>
      __$$ScrobbleArtistImplCopyWithImpl<_$ScrobbleArtistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScrobbleArtistImplToJson(
      this,
    );
  }
}

abstract class _ScrobbleArtist implements ScrobbleArtist {
  const factory _ScrobbleArtist(
      {required final String id,
      required final String name}) = _$ScrobbleArtistImpl;

  factory _ScrobbleArtist.fromJson(Map<String, dynamic> json) =
      _$ScrobbleArtistImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of ScrobbleArtist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrobbleArtistImplCopyWith<_$ScrobbleArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScrobbleDetails _$ScrobbleDetailsFromJson(Map<String, dynamic> json) {
  return _ScrobbleDetails.fromJson(json);
}

/// @nodoc
mixin _$ScrobbleDetails {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<ScrobbleArtist> get artists => throw _privateConstructorUsedError;
  ScrobbleAlbum get album => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  String? get isrc => throw _privateConstructorUsedError;

  /// Serializes this ScrobbleDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScrobbleDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrobbleDetailsCopyWith<ScrobbleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrobbleDetailsCopyWith<$Res> {
  factory $ScrobbleDetailsCopyWith(
          ScrobbleDetails value, $Res Function(ScrobbleDetails) then) =
      _$ScrobbleDetailsCopyWithImpl<$Res, ScrobbleDetails>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<ScrobbleArtist> artists,
      ScrobbleAlbum album,
      int? timestamp,
      int? durationMs,
      String? isrc});

  $ScrobbleAlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$ScrobbleDetailsCopyWithImpl<$Res, $Val extends ScrobbleDetails>
    implements $ScrobbleDetailsCopyWith<$Res> {
  _$ScrobbleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrobbleDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? artists = null,
    Object? album = null,
    Object? timestamp = freezed,
    Object? durationMs = freezed,
    Object? isrc = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ScrobbleArtist>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as ScrobbleAlbum,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ScrobbleDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrobbleAlbumCopyWith<$Res> get album {
    return $ScrobbleAlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScrobbleDetailsImplCopyWith<$Res>
    implements $ScrobbleDetailsCopyWith<$Res> {
  factory _$$ScrobbleDetailsImplCopyWith(_$ScrobbleDetailsImpl value,
          $Res Function(_$ScrobbleDetailsImpl) then) =
      __$$ScrobbleDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<ScrobbleArtist> artists,
      ScrobbleAlbum album,
      int? timestamp,
      int? durationMs,
      String? isrc});

  @override
  $ScrobbleAlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$ScrobbleDetailsImplCopyWithImpl<$Res>
    extends _$ScrobbleDetailsCopyWithImpl<$Res, _$ScrobbleDetailsImpl>
    implements _$$ScrobbleDetailsImplCopyWith<$Res> {
  __$$ScrobbleDetailsImplCopyWithImpl(
      _$ScrobbleDetailsImpl _value, $Res Function(_$ScrobbleDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrobbleDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? artists = null,
    Object? album = null,
    Object? timestamp = freezed,
    Object? durationMs = freezed,
    Object? isrc = freezed,
  }) {
    return _then(_$ScrobbleDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ScrobbleArtist>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as ScrobbleAlbum,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScrobbleDetailsImpl implements _ScrobbleDetails {
  const _$ScrobbleDetailsImpl(
      {required this.id,
      required this.title,
      required final List<ScrobbleArtist> artists,
      required this.album,
      this.timestamp,
      this.durationMs,
      this.isrc})
      : _artists = artists;

  factory _$ScrobbleDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScrobbleDetailsImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<ScrobbleArtist> _artists;
  @override
  List<ScrobbleArtist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final ScrobbleAlbum album;
  @override
  final int? timestamp;
  @override
  final int? durationMs;
  @override
  final String? isrc;

  @override
  String toString() {
    return 'ScrobbleDetails(id: $id, title: $title, artists: $artists, album: $album, timestamp: $timestamp, durationMs: $durationMs, isrc: $isrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrobbleDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.isrc, isrc) || other.isrc == isrc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_artists),
      album,
      timestamp,
      durationMs,
      isrc);

  /// Create a copy of ScrobbleDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrobbleDetailsImplCopyWith<_$ScrobbleDetailsImpl> get copyWith =>
      __$$ScrobbleDetailsImplCopyWithImpl<_$ScrobbleDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScrobbleDetailsImplToJson(
      this,
    );
  }
}

abstract class _ScrobbleDetails implements ScrobbleDetails {
  const factory _ScrobbleDetails(
      {required final String id,
      required final String title,
      required final List<ScrobbleArtist> artists,
      required final ScrobbleAlbum album,
      final int? timestamp,
      final int? durationMs,
      final String? isrc}) = _$ScrobbleDetailsImpl;

  factory _ScrobbleDetails.fromJson(Map<String, dynamic> json) =
      _$ScrobbleDetailsImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<ScrobbleArtist> get artists;
  @override
  ScrobbleAlbum get album;
  @override
  int? get timestamp;
  @override
  int? get durationMs;
  @override
  String? get isrc;

  /// Create a copy of ScrobbleDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrobbleDetailsImplCopyWith<_$ScrobbleDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
