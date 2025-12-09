// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotubeAudioLosslessContainerQuality
    _$SpotubeAudioLosslessContainerQualityFromJson(Map<String, dynamic> json) {
  return _SpotubeAudioLosslessContainerQuality.fromJson(json);
}

/// @nodoc
mixin _$SpotubeAudioLosslessContainerQuality {
  int get bitDepth => throw _privateConstructorUsedError;
  int get sampleRate => throw _privateConstructorUsedError;

  /// Serializes this SpotubeAudioLosslessContainerQuality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeAudioLosslessContainerQualityCopyWith<
          SpotubeAudioLosslessContainerQuality>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeAudioLosslessContainerQualityCopyWith<$Res> {
  factory $SpotubeAudioLosslessContainerQualityCopyWith(
          SpotubeAudioLosslessContainerQuality value,
          $Res Function(SpotubeAudioLosslessContainerQuality) then) =
      _$SpotubeAudioLosslessContainerQualityCopyWithImpl<$Res,
          SpotubeAudioLosslessContainerQuality>;
  @useResult
  $Res call({int bitDepth, int sampleRate});
}

/// @nodoc
class _$SpotubeAudioLosslessContainerQualityCopyWithImpl<$Res,
        $Val extends SpotubeAudioLosslessContainerQuality>
    implements $SpotubeAudioLosslessContainerQualityCopyWith<$Res> {
  _$SpotubeAudioLosslessContainerQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitDepth = null,
    Object? sampleRate = null,
  }) {
    return _then(_value.copyWith(
      bitDepth: null == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int,
      sampleRate: null == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeAudioLosslessContainerQualityImplCopyWith<$Res>
    implements $SpotubeAudioLosslessContainerQualityCopyWith<$Res> {
  factory _$$SpotubeAudioLosslessContainerQualityImplCopyWith(
          _$SpotubeAudioLosslessContainerQualityImpl value,
          $Res Function(_$SpotubeAudioLosslessContainerQualityImpl) then) =
      __$$SpotubeAudioLosslessContainerQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bitDepth, int sampleRate});
}

/// @nodoc
class __$$SpotubeAudioLosslessContainerQualityImplCopyWithImpl<$Res>
    extends _$SpotubeAudioLosslessContainerQualityCopyWithImpl<$Res,
        _$SpotubeAudioLosslessContainerQualityImpl>
    implements _$$SpotubeAudioLosslessContainerQualityImplCopyWith<$Res> {
  __$$SpotubeAudioLosslessContainerQualityImplCopyWithImpl(
      _$SpotubeAudioLosslessContainerQualityImpl _value,
      $Res Function(_$SpotubeAudioLosslessContainerQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitDepth = null,
    Object? sampleRate = null,
  }) {
    return _then(_$SpotubeAudioLosslessContainerQualityImpl(
      bitDepth: null == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int,
      sampleRate: null == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeAudioLosslessContainerQualityImpl
    extends _SpotubeAudioLosslessContainerQuality {
  const _$SpotubeAudioLosslessContainerQualityImpl(
      {required this.bitDepth, required this.sampleRate})
      : super._();

  factory _$SpotubeAudioLosslessContainerQualityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeAudioLosslessContainerQualityImplFromJson(json);

  @override
  final int bitDepth;
  @override
  final int sampleRate;

  @override
  String toString() {
    return 'SpotubeAudioLosslessContainerQuality(bitDepth: $bitDepth, sampleRate: $sampleRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeAudioLosslessContainerQualityImpl &&
            (identical(other.bitDepth, bitDepth) ||
                other.bitDepth == bitDepth) &&
            (identical(other.sampleRate, sampleRate) ||
                other.sampleRate == sampleRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitDepth, sampleRate);

  /// Create a copy of SpotubeAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeAudioLosslessContainerQualityImplCopyWith<
          _$SpotubeAudioLosslessContainerQualityImpl>
      get copyWith => __$$SpotubeAudioLosslessContainerQualityImplCopyWithImpl<
          _$SpotubeAudioLosslessContainerQualityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeAudioLosslessContainerQualityImplToJson(
      this,
    );
  }
}

abstract class _SpotubeAudioLosslessContainerQuality
    extends SpotubeAudioLosslessContainerQuality {
  const factory _SpotubeAudioLosslessContainerQuality(
          {required final int bitDepth, required final int sampleRate}) =
      _$SpotubeAudioLosslessContainerQualityImpl;
  const _SpotubeAudioLosslessContainerQuality._() : super._();

  factory _SpotubeAudioLosslessContainerQuality.fromJson(
          Map<String, dynamic> json) =
      _$SpotubeAudioLosslessContainerQualityImpl.fromJson;

  @override
  int get bitDepth;
  @override
  int get sampleRate;

  /// Create a copy of SpotubeAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeAudioLosslessContainerQualityImplCopyWith<
          _$SpotubeAudioLosslessContainerQualityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeAudioLossyContainerQuality _$SpotubeAudioLossyContainerQualityFromJson(
    Map<String, dynamic> json) {
  return _SpotubeAudioLossyContainerQuality.fromJson(json);
}

/// @nodoc
mixin _$SpotubeAudioLossyContainerQuality {
  int get bitrate => throw _privateConstructorUsedError;

  /// Serializes this SpotubeAudioLossyContainerQuality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeAudioLossyContainerQualityCopyWith<SpotubeAudioLossyContainerQuality>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeAudioLossyContainerQualityCopyWith<$Res> {
  factory $SpotubeAudioLossyContainerQualityCopyWith(
          SpotubeAudioLossyContainerQuality value,
          $Res Function(SpotubeAudioLossyContainerQuality) then) =
      _$SpotubeAudioLossyContainerQualityCopyWithImpl<$Res,
          SpotubeAudioLossyContainerQuality>;
  @useResult
  $Res call({int bitrate});
}

/// @nodoc
class _$SpotubeAudioLossyContainerQualityCopyWithImpl<$Res,
        $Val extends SpotubeAudioLossyContainerQuality>
    implements $SpotubeAudioLossyContainerQualityCopyWith<$Res> {
  _$SpotubeAudioLossyContainerQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrate = null,
  }) {
    return _then(_value.copyWith(
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeAudioLossyContainerQualityImplCopyWith<$Res>
    implements $SpotubeAudioLossyContainerQualityCopyWith<$Res> {
  factory _$$SpotubeAudioLossyContainerQualityImplCopyWith(
          _$SpotubeAudioLossyContainerQualityImpl value,
          $Res Function(_$SpotubeAudioLossyContainerQualityImpl) then) =
      __$$SpotubeAudioLossyContainerQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bitrate});
}

/// @nodoc
class __$$SpotubeAudioLossyContainerQualityImplCopyWithImpl<$Res>
    extends _$SpotubeAudioLossyContainerQualityCopyWithImpl<$Res,
        _$SpotubeAudioLossyContainerQualityImpl>
    implements _$$SpotubeAudioLossyContainerQualityImplCopyWith<$Res> {
  __$$SpotubeAudioLossyContainerQualityImplCopyWithImpl(
      _$SpotubeAudioLossyContainerQualityImpl _value,
      $Res Function(_$SpotubeAudioLossyContainerQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrate = null,
  }) {
    return _then(_$SpotubeAudioLossyContainerQualityImpl(
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeAudioLossyContainerQualityImpl
    extends _SpotubeAudioLossyContainerQuality {
  const _$SpotubeAudioLossyContainerQualityImpl({required this.bitrate})
      : super._();

  factory _$SpotubeAudioLossyContainerQualityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeAudioLossyContainerQualityImplFromJson(json);

  @override
  final int bitrate;

  @override
  String toString() {
    return 'SpotubeAudioLossyContainerQuality(bitrate: $bitrate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeAudioLossyContainerQualityImpl &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitrate);

  /// Create a copy of SpotubeAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeAudioLossyContainerQualityImplCopyWith<
          _$SpotubeAudioLossyContainerQualityImpl>
      get copyWith => __$$SpotubeAudioLossyContainerQualityImplCopyWithImpl<
          _$SpotubeAudioLossyContainerQualityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeAudioLossyContainerQualityImplToJson(
      this,
    );
  }
}

abstract class _SpotubeAudioLossyContainerQuality
    extends SpotubeAudioLossyContainerQuality {
  const factory _SpotubeAudioLossyContainerQuality(
      {required final int bitrate}) = _$SpotubeAudioLossyContainerQualityImpl;
  const _SpotubeAudioLossyContainerQuality._() : super._();

  factory _SpotubeAudioLossyContainerQuality.fromJson(
          Map<String, dynamic> json) =
      _$SpotubeAudioLossyContainerQualityImpl.fromJson;

  @override
  int get bitrate;

  /// Create a copy of SpotubeAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeAudioLossyContainerQualityImplCopyWith<
          _$SpotubeAudioLossyContainerQualityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeAudioSourceContainerPreset _$SpotubeAudioSourceContainerPresetFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'lossy':
      return SpotubeAudioSourceContainerPreset_Lossy.fromJson(json);
    case 'lossless':
      return SpotubeAudioSourceContainerPreset_Lossless.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'SpotubeAudioSourceContainerPreset',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SpotubeAudioSourceContainerPreset {
  SpotubeMediaCompressionType get compressionType =>
      throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Object> get qualities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeMediaCompressionType compressionType,
            String name, List<SpotubeAudioLossyContainerQuality> qualities)
        lossy,
    required TResult Function(SpotubeMediaCompressionType compressionType,
            String name, List<SpotubeAudioLosslessContainerQuality> qualities)
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLossyContainerQuality> qualities)?
        lossy,
    TResult? Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLosslessContainerQuality> qualities)?
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLossyContainerQuality> qualities)?
        lossy,
    TResult Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLosslessContainerQuality> qualities)?
        lossless,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubeAudioSourceContainerPreset_Lossy value)
        lossy,
    required TResult Function(SpotubeAudioSourceContainerPreset_Lossless value)
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeAudioSourceContainerPreset_Lossy value)? lossy,
    TResult? Function(SpotubeAudioSourceContainerPreset_Lossless value)?
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeAudioSourceContainerPreset_Lossy value)? lossy,
    TResult Function(SpotubeAudioSourceContainerPreset_Lossless value)?
        lossless,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SpotubeAudioSourceContainerPreset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeAudioSourceContainerPresetCopyWith<SpotubeAudioSourceContainerPreset>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  factory $SpotubeAudioSourceContainerPresetCopyWith(
          SpotubeAudioSourceContainerPreset value,
          $Res Function(SpotubeAudioSourceContainerPreset) then) =
      _$SpotubeAudioSourceContainerPresetCopyWithImpl<$Res,
          SpotubeAudioSourceContainerPreset>;
  @useResult
  $Res call({SpotubeMediaCompressionType compressionType, String name});
}

/// @nodoc
class _$SpotubeAudioSourceContainerPresetCopyWithImpl<$Res,
        $Val extends SpotubeAudioSourceContainerPreset>
    implements $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  _$SpotubeAudioSourceContainerPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compressionType = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      compressionType: null == compressionType
          ? _value.compressionType
          : compressionType // ignore: cast_nullable_to_non_nullable
              as SpotubeMediaCompressionType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeAudioSourceContainerPreset_LossyImplCopyWith<$Res>
    implements $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  factory _$$SpotubeAudioSourceContainerPreset_LossyImplCopyWith(
          _$SpotubeAudioSourceContainerPreset_LossyImpl value,
          $Res Function(_$SpotubeAudioSourceContainerPreset_LossyImpl) then) =
      __$$SpotubeAudioSourceContainerPreset_LossyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SpotubeMediaCompressionType compressionType,
      String name,
      List<SpotubeAudioLossyContainerQuality> qualities});
}

/// @nodoc
class __$$SpotubeAudioSourceContainerPreset_LossyImplCopyWithImpl<$Res>
    extends _$SpotubeAudioSourceContainerPresetCopyWithImpl<$Res,
        _$SpotubeAudioSourceContainerPreset_LossyImpl>
    implements _$$SpotubeAudioSourceContainerPreset_LossyImplCopyWith<$Res> {
  __$$SpotubeAudioSourceContainerPreset_LossyImplCopyWithImpl(
      _$SpotubeAudioSourceContainerPreset_LossyImpl _value,
      $Res Function(_$SpotubeAudioSourceContainerPreset_LossyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compressionType = null,
    Object? name = null,
    Object? qualities = null,
  }) {
    return _then(_$SpotubeAudioSourceContainerPreset_LossyImpl(
      compressionType: null == compressionType
          ? _value.compressionType
          : compressionType // ignore: cast_nullable_to_non_nullable
              as SpotubeMediaCompressionType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qualities: null == qualities
          ? _value._qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<SpotubeAudioLossyContainerQuality>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeAudioSourceContainerPreset_LossyImpl
    extends SpotubeAudioSourceContainerPreset_Lossy {
  const _$SpotubeAudioSourceContainerPreset_LossyImpl(
      {required this.compressionType,
      required this.name,
      required final List<SpotubeAudioLossyContainerQuality> qualities,
      final String? $type})
      : _qualities = qualities,
        $type = $type ?? 'lossy',
        super._();

  factory _$SpotubeAudioSourceContainerPreset_LossyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeAudioSourceContainerPreset_LossyImplFromJson(json);

  @override
  final SpotubeMediaCompressionType compressionType;
  @override
  final String name;
  final List<SpotubeAudioLossyContainerQuality> _qualities;
  @override
  List<SpotubeAudioLossyContainerQuality> get qualities {
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualities);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SpotubeAudioSourceContainerPreset.lossy(compressionType: $compressionType, name: $name, qualities: $qualities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeAudioSourceContainerPreset_LossyImpl &&
            (identical(other.compressionType, compressionType) ||
                other.compressionType == compressionType) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._qualities, _qualities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, compressionType, name,
      const DeepCollectionEquality().hash(_qualities));

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeAudioSourceContainerPreset_LossyImplCopyWith<
          _$SpotubeAudioSourceContainerPreset_LossyImpl>
      get copyWith =>
          __$$SpotubeAudioSourceContainerPreset_LossyImplCopyWithImpl<
              _$SpotubeAudioSourceContainerPreset_LossyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeMediaCompressionType compressionType,
            String name, List<SpotubeAudioLossyContainerQuality> qualities)
        lossy,
    required TResult Function(SpotubeMediaCompressionType compressionType,
            String name, List<SpotubeAudioLosslessContainerQuality> qualities)
        lossless,
  }) {
    return lossy(compressionType, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLossyContainerQuality> qualities)?
        lossy,
    TResult? Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLosslessContainerQuality> qualities)?
        lossless,
  }) {
    return lossy?.call(compressionType, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLossyContainerQuality> qualities)?
        lossy,
    TResult Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLosslessContainerQuality> qualities)?
        lossless,
    required TResult orElse(),
  }) {
    if (lossy != null) {
      return lossy(compressionType, name, qualities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubeAudioSourceContainerPreset_Lossy value)
        lossy,
    required TResult Function(SpotubeAudioSourceContainerPreset_Lossless value)
        lossless,
  }) {
    return lossy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeAudioSourceContainerPreset_Lossy value)? lossy,
    TResult? Function(SpotubeAudioSourceContainerPreset_Lossless value)?
        lossless,
  }) {
    return lossy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeAudioSourceContainerPreset_Lossy value)? lossy,
    TResult Function(SpotubeAudioSourceContainerPreset_Lossless value)?
        lossless,
    required TResult orElse(),
  }) {
    if (lossy != null) {
      return lossy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeAudioSourceContainerPreset_LossyImplToJson(
      this,
    );
  }
}

abstract class SpotubeAudioSourceContainerPreset_Lossy
    extends SpotubeAudioSourceContainerPreset {
  const factory SpotubeAudioSourceContainerPreset_Lossy(
          {required final SpotubeMediaCompressionType compressionType,
          required final String name,
          required final List<SpotubeAudioLossyContainerQuality> qualities}) =
      _$SpotubeAudioSourceContainerPreset_LossyImpl;
  const SpotubeAudioSourceContainerPreset_Lossy._() : super._();

  factory SpotubeAudioSourceContainerPreset_Lossy.fromJson(
          Map<String, dynamic> json) =
      _$SpotubeAudioSourceContainerPreset_LossyImpl.fromJson;

  @override
  SpotubeMediaCompressionType get compressionType;
  @override
  String get name;
  @override
  List<SpotubeAudioLossyContainerQuality> get qualities;

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeAudioSourceContainerPreset_LossyImplCopyWith<
          _$SpotubeAudioSourceContainerPreset_LossyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWith<$Res>
    implements $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  factory _$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWith(
          _$SpotubeAudioSourceContainerPreset_LosslessImpl value,
          $Res Function(_$SpotubeAudioSourceContainerPreset_LosslessImpl)
              then) =
      __$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SpotubeMediaCompressionType compressionType,
      String name,
      List<SpotubeAudioLosslessContainerQuality> qualities});
}

/// @nodoc
class __$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWithImpl<$Res>
    extends _$SpotubeAudioSourceContainerPresetCopyWithImpl<$Res,
        _$SpotubeAudioSourceContainerPreset_LosslessImpl>
    implements _$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWith<$Res> {
  __$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWithImpl(
      _$SpotubeAudioSourceContainerPreset_LosslessImpl _value,
      $Res Function(_$SpotubeAudioSourceContainerPreset_LosslessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compressionType = null,
    Object? name = null,
    Object? qualities = null,
  }) {
    return _then(_$SpotubeAudioSourceContainerPreset_LosslessImpl(
      compressionType: null == compressionType
          ? _value.compressionType
          : compressionType // ignore: cast_nullable_to_non_nullable
              as SpotubeMediaCompressionType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qualities: null == qualities
          ? _value._qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<SpotubeAudioLosslessContainerQuality>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeAudioSourceContainerPreset_LosslessImpl
    extends SpotubeAudioSourceContainerPreset_Lossless {
  const _$SpotubeAudioSourceContainerPreset_LosslessImpl(
      {required this.compressionType,
      required this.name,
      required final List<SpotubeAudioLosslessContainerQuality> qualities,
      final String? $type})
      : _qualities = qualities,
        $type = $type ?? 'lossless',
        super._();

  factory _$SpotubeAudioSourceContainerPreset_LosslessImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeAudioSourceContainerPreset_LosslessImplFromJson(json);

  @override
  final SpotubeMediaCompressionType compressionType;
  @override
  final String name;
  final List<SpotubeAudioLosslessContainerQuality> _qualities;
  @override
  List<SpotubeAudioLosslessContainerQuality> get qualities {
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualities);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SpotubeAudioSourceContainerPreset.lossless(compressionType: $compressionType, name: $name, qualities: $qualities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeAudioSourceContainerPreset_LosslessImpl &&
            (identical(other.compressionType, compressionType) ||
                other.compressionType == compressionType) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._qualities, _qualities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, compressionType, name,
      const DeepCollectionEquality().hash(_qualities));

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWith<
          _$SpotubeAudioSourceContainerPreset_LosslessImpl>
      get copyWith =>
          __$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWithImpl<
                  _$SpotubeAudioSourceContainerPreset_LosslessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpotubeMediaCompressionType compressionType,
            String name, List<SpotubeAudioLossyContainerQuality> qualities)
        lossy,
    required TResult Function(SpotubeMediaCompressionType compressionType,
            String name, List<SpotubeAudioLosslessContainerQuality> qualities)
        lossless,
  }) {
    return lossless(compressionType, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLossyContainerQuality> qualities)?
        lossy,
    TResult? Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLosslessContainerQuality> qualities)?
        lossless,
  }) {
    return lossless?.call(compressionType, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLossyContainerQuality> qualities)?
        lossy,
    TResult Function(SpotubeMediaCompressionType compressionType, String name,
            List<SpotubeAudioLosslessContainerQuality> qualities)?
        lossless,
    required TResult orElse(),
  }) {
    if (lossless != null) {
      return lossless(compressionType, name, qualities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpotubeAudioSourceContainerPreset_Lossy value)
        lossy,
    required TResult Function(SpotubeAudioSourceContainerPreset_Lossless value)
        lossless,
  }) {
    return lossless(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpotubeAudioSourceContainerPreset_Lossy value)? lossy,
    TResult? Function(SpotubeAudioSourceContainerPreset_Lossless value)?
        lossless,
  }) {
    return lossless?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpotubeAudioSourceContainerPreset_Lossy value)? lossy,
    TResult Function(SpotubeAudioSourceContainerPreset_Lossless value)?
        lossless,
    required TResult orElse(),
  }) {
    if (lossless != null) {
      return lossless(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeAudioSourceContainerPreset_LosslessImplToJson(
      this,
    );
  }
}

abstract class SpotubeAudioSourceContainerPreset_Lossless
    extends SpotubeAudioSourceContainerPreset {
  const factory SpotubeAudioSourceContainerPreset_Lossless(
      {required final SpotubeMediaCompressionType compressionType,
      required final String name,
      required final List<SpotubeAudioLosslessContainerQuality>
          qualities}) = _$SpotubeAudioSourceContainerPreset_LosslessImpl;
  const SpotubeAudioSourceContainerPreset_Lossless._() : super._();

  factory SpotubeAudioSourceContainerPreset_Lossless.fromJson(
          Map<String, dynamic> json) =
      _$SpotubeAudioSourceContainerPreset_LosslessImpl.fromJson;

  @override
  SpotubeMediaCompressionType get compressionType;
  @override
  String get name;
  @override
  List<SpotubeAudioLosslessContainerQuality> get qualities;

  /// Create a copy of SpotubeAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeAudioSourceContainerPreset_LosslessImplCopyWith<
          _$SpotubeAudioSourceContainerPreset_LosslessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeAudioSourceMatchObject _$SpotubeAudioSourceMatchObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeAudioSourceMatchObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeAudioSourceMatchObject {
  String get typeName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get artists => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;

  /// Serializes this SpotubeAudioSourceMatchObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeAudioSourceMatchObjectCopyWith<SpotubeAudioSourceMatchObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeAudioSourceMatchObjectCopyWith<$Res> {
  factory $SpotubeAudioSourceMatchObjectCopyWith(
          SpotubeAudioSourceMatchObject value,
          $Res Function(SpotubeAudioSourceMatchObject) then) =
      _$SpotubeAudioSourceMatchObjectCopyWithImpl<$Res,
          SpotubeAudioSourceMatchObject>;
  @useResult
  $Res call(
      {String typeName,
      String id,
      String title,
      List<String> artists,
      int duration,
      String? thumbnail,
      String externalUri});
}

/// @nodoc
class _$SpotubeAudioSourceMatchObjectCopyWithImpl<$Res,
        $Val extends SpotubeAudioSourceMatchObject>
    implements $SpotubeAudioSourceMatchObjectCopyWith<$Res> {
  _$SpotubeAudioSourceMatchObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? title = null,
    Object? artists = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? externalUri = null,
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
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeAudioSourceMatchObjectImplCopyWith<$Res>
    implements $SpotubeAudioSourceMatchObjectCopyWith<$Res> {
  factory _$$SpotubeAudioSourceMatchObjectImplCopyWith(
          _$SpotubeAudioSourceMatchObjectImpl value,
          $Res Function(_$SpotubeAudioSourceMatchObjectImpl) then) =
      __$$SpotubeAudioSourceMatchObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String id,
      String title,
      List<String> artists,
      int duration,
      String? thumbnail,
      String externalUri});
}

/// @nodoc
class __$$SpotubeAudioSourceMatchObjectImplCopyWithImpl<$Res>
    extends _$SpotubeAudioSourceMatchObjectCopyWithImpl<$Res,
        _$SpotubeAudioSourceMatchObjectImpl>
    implements _$$SpotubeAudioSourceMatchObjectImplCopyWith<$Res> {
  __$$SpotubeAudioSourceMatchObjectImplCopyWithImpl(
      _$SpotubeAudioSourceMatchObjectImpl _value,
      $Res Function(_$SpotubeAudioSourceMatchObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? id = null,
    Object? title = null,
    Object? artists = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? externalUri = null,
  }) {
    return _then(_$SpotubeAudioSourceMatchObjectImpl(
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
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeAudioSourceMatchObjectImpl
    implements _SpotubeAudioSourceMatchObject {
  const _$SpotubeAudioSourceMatchObjectImpl(
      {required this.typeName,
      required this.id,
      required this.title,
      required final List<String> artists,
      required this.duration,
      this.thumbnail,
      required this.externalUri})
      : _artists = artists;

  factory _$SpotubeAudioSourceMatchObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeAudioSourceMatchObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String id;
  @override
  final String title;
  final List<String> _artists;
  @override
  List<String> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final int duration;
  @override
  final String? thumbnail;
  @override
  final String externalUri;

  @override
  String toString() {
    return 'SpotubeAudioSourceMatchObject(typeName: $typeName, id: $id, title: $title, artists: $artists, duration: $duration, thumbnail: $thumbnail, externalUri: $externalUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeAudioSourceMatchObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeName,
      id,
      title,
      const DeepCollectionEquality().hash(_artists),
      duration,
      thumbnail,
      externalUri);

  /// Create a copy of SpotubeAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeAudioSourceMatchObjectImplCopyWith<
          _$SpotubeAudioSourceMatchObjectImpl>
      get copyWith => __$$SpotubeAudioSourceMatchObjectImplCopyWithImpl<
          _$SpotubeAudioSourceMatchObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeAudioSourceMatchObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeAudioSourceMatchObject
    implements SpotubeAudioSourceMatchObject {
  const factory _SpotubeAudioSourceMatchObject(
      {required final String typeName,
      required final String id,
      required final String title,
      required final List<String> artists,
      required final int duration,
      final String? thumbnail,
      required final String externalUri}) = _$SpotubeAudioSourceMatchObjectImpl;

  factory _SpotubeAudioSourceMatchObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeAudioSourceMatchObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get artists;
  @override
  int get duration;
  @override
  String? get thumbnail;
  @override
  String get externalUri;

  /// Create a copy of SpotubeAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeAudioSourceMatchObjectImplCopyWith<
          _$SpotubeAudioSourceMatchObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpotubeAudioSourceStreamObject _$SpotubeAudioSourceStreamObjectFromJson(
    Map<String, dynamic> json) {
  return _SpotubeAudioSourceStreamObject.fromJson(json);
}

/// @nodoc
mixin _$SpotubeAudioSourceStreamObject {
  String get typeName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get container => throw _privateConstructorUsedError;
  SpotubeMediaCompressionType get compressionType =>
      throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  double? get bitrate => throw _privateConstructorUsedError;
  int? get bitDepth => throw _privateConstructorUsedError;
  double? get sampleRate => throw _privateConstructorUsedError;

  /// Serializes this SpotubeAudioSourceStreamObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotubeAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotubeAudioSourceStreamObjectCopyWith<SpotubeAudioSourceStreamObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotubeAudioSourceStreamObjectCopyWith<$Res> {
  factory $SpotubeAudioSourceStreamObjectCopyWith(
          SpotubeAudioSourceStreamObject value,
          $Res Function(SpotubeAudioSourceStreamObject) then) =
      _$SpotubeAudioSourceStreamObjectCopyWithImpl<$Res,
          SpotubeAudioSourceStreamObject>;
  @useResult
  $Res call(
      {String typeName,
      String url,
      String container,
      SpotubeMediaCompressionType compressionType,
      String? codec,
      double? bitrate,
      int? bitDepth,
      double? sampleRate});
}

/// @nodoc
class _$SpotubeAudioSourceStreamObjectCopyWithImpl<$Res,
        $Val extends SpotubeAudioSourceStreamObject>
    implements $SpotubeAudioSourceStreamObjectCopyWith<$Res> {
  _$SpotubeAudioSourceStreamObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotubeAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? url = null,
    Object? container = null,
    Object? compressionType = null,
    Object? codec = freezed,
    Object? bitrate = freezed,
    Object? bitDepth = freezed,
    Object? sampleRate = freezed,
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
      container: null == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as String,
      compressionType: null == compressionType
          ? _value.compressionType
          : compressionType // ignore: cast_nullable_to_non_nullable
              as SpotubeMediaCompressionType,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as double?,
      bitDepth: freezed == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int?,
      sampleRate: freezed == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotubeAudioSourceStreamObjectImplCopyWith<$Res>
    implements $SpotubeAudioSourceStreamObjectCopyWith<$Res> {
  factory _$$SpotubeAudioSourceStreamObjectImplCopyWith(
          _$SpotubeAudioSourceStreamObjectImpl value,
          $Res Function(_$SpotubeAudioSourceStreamObjectImpl) then) =
      __$$SpotubeAudioSourceStreamObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeName,
      String url,
      String container,
      SpotubeMediaCompressionType compressionType,
      String? codec,
      double? bitrate,
      int? bitDepth,
      double? sampleRate});
}

/// @nodoc
class __$$SpotubeAudioSourceStreamObjectImplCopyWithImpl<$Res>
    extends _$SpotubeAudioSourceStreamObjectCopyWithImpl<$Res,
        _$SpotubeAudioSourceStreamObjectImpl>
    implements _$$SpotubeAudioSourceStreamObjectImplCopyWith<$Res> {
  __$$SpotubeAudioSourceStreamObjectImplCopyWithImpl(
      _$SpotubeAudioSourceStreamObjectImpl _value,
      $Res Function(_$SpotubeAudioSourceStreamObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotubeAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? url = null,
    Object? container = null,
    Object? compressionType = null,
    Object? codec = freezed,
    Object? bitrate = freezed,
    Object? bitDepth = freezed,
    Object? sampleRate = freezed,
  }) {
    return _then(_$SpotubeAudioSourceStreamObjectImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      container: null == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as String,
      compressionType: null == compressionType
          ? _value.compressionType
          : compressionType // ignore: cast_nullable_to_non_nullable
              as SpotubeMediaCompressionType,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as double?,
      bitDepth: freezed == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int?,
      sampleRate: freezed == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotubeAudioSourceStreamObjectImpl
    implements _SpotubeAudioSourceStreamObject {
  const _$SpotubeAudioSourceStreamObjectImpl(
      {required this.typeName,
      required this.url,
      required this.container,
      required this.compressionType,
      this.codec,
      this.bitrate,
      this.bitDepth,
      this.sampleRate});

  factory _$SpotubeAudioSourceStreamObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpotubeAudioSourceStreamObjectImplFromJson(json);

  @override
  final String typeName;
  @override
  final String url;
  @override
  final String container;
  @override
  final SpotubeMediaCompressionType compressionType;
  @override
  final String? codec;
  @override
  final double? bitrate;
  @override
  final int? bitDepth;
  @override
  final double? sampleRate;

  @override
  String toString() {
    return 'SpotubeAudioSourceStreamObject(typeName: $typeName, url: $url, container: $container, compressionType: $compressionType, codec: $codec, bitrate: $bitrate, bitDepth: $bitDepth, sampleRate: $sampleRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotubeAudioSourceStreamObjectImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.container, container) ||
                other.container == container) &&
            (identical(other.compressionType, compressionType) ||
                other.compressionType == compressionType) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.bitDepth, bitDepth) ||
                other.bitDepth == bitDepth) &&
            (identical(other.sampleRate, sampleRate) ||
                other.sampleRate == sampleRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeName, url, container,
      compressionType, codec, bitrate, bitDepth, sampleRate);

  /// Create a copy of SpotubeAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotubeAudioSourceStreamObjectImplCopyWith<
          _$SpotubeAudioSourceStreamObjectImpl>
      get copyWith => __$$SpotubeAudioSourceStreamObjectImplCopyWithImpl<
          _$SpotubeAudioSourceStreamObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotubeAudioSourceStreamObjectImplToJson(
      this,
    );
  }
}

abstract class _SpotubeAudioSourceStreamObject
    implements SpotubeAudioSourceStreamObject {
  const factory _SpotubeAudioSourceStreamObject(
      {required final String typeName,
      required final String url,
      required final String container,
      required final SpotubeMediaCompressionType compressionType,
      final String? codec,
      final double? bitrate,
      final int? bitDepth,
      final double? sampleRate}) = _$SpotubeAudioSourceStreamObjectImpl;

  factory _SpotubeAudioSourceStreamObject.fromJson(Map<String, dynamic> json) =
      _$SpotubeAudioSourceStreamObjectImpl.fromJson;

  @override
  String get typeName;
  @override
  String get url;
  @override
  String get container;
  @override
  SpotubeMediaCompressionType get compressionType;
  @override
  String? get codec;
  @override
  double? get bitrate;
  @override
  int? get bitDepth;
  @override
  double? get sampleRate;

  /// Create a copy of SpotubeAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotubeAudioSourceStreamObjectImplCopyWith<
          _$SpotubeAudioSourceStreamObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
