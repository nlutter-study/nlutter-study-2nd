// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpotifyAuth _$SpotifyAuthFromJson(Map<String, dynamic> json) {
  return _SpotifyAuth.fromJson(json);
}

/// @nodoc
mixin _$SpotifyAuth {
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyAuthCopyWith<SpotifyAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyAuthCopyWith<$Res> {
  factory $SpotifyAuthCopyWith(
          SpotifyAuth value, $Res Function(SpotifyAuth) then) =
      _$SpotifyAuthCopyWithImpl<$Res, SpotifyAuth>;
  @useResult
  $Res call({String accessToken, String tokenType, int expiresIn});
}

/// @nodoc
class _$SpotifyAuthCopyWithImpl<$Res, $Val extends SpotifyAuth>
    implements $SpotifyAuthCopyWith<$Res> {
  _$SpotifyAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyAuthImplCopyWith<$Res>
    implements $SpotifyAuthCopyWith<$Res> {
  factory _$$SpotifyAuthImplCopyWith(
          _$SpotifyAuthImpl value, $Res Function(_$SpotifyAuthImpl) then) =
      __$$SpotifyAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String tokenType, int expiresIn});
}

/// @nodoc
class __$$SpotifyAuthImplCopyWithImpl<$Res>
    extends _$SpotifyAuthCopyWithImpl<$Res, _$SpotifyAuthImpl>
    implements _$$SpotifyAuthImplCopyWith<$Res> {
  __$$SpotifyAuthImplCopyWithImpl(
      _$SpotifyAuthImpl _value, $Res Function(_$SpotifyAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
  }) {
    return _then(_$SpotifyAuthImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$SpotifyAuthImpl implements _SpotifyAuth {
  const _$SpotifyAuthImpl(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresIn});

  factory _$SpotifyAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyAuthImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final int expiresIn;

  @override
  String toString() {
    return 'SpotifyAuth(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyAuthImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, tokenType, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyAuthImplCopyWith<_$SpotifyAuthImpl> get copyWith =>
      __$$SpotifyAuthImplCopyWithImpl<_$SpotifyAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyAuthImplToJson(
      this,
    );
  }
}

abstract class _SpotifyAuth implements SpotifyAuth {
  const factory _SpotifyAuth(
      {required final String accessToken,
      required final String tokenType,
      required final int expiresIn}) = _$SpotifyAuthImpl;

  factory _SpotifyAuth.fromJson(Map<String, dynamic> json) =
      _$SpotifyAuthImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get tokenType;
  @override
  int get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyAuthImplCopyWith<_$SpotifyAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
