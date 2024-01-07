// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metronome_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetronomeModel _$MetronomeModelFromJson(Map<String, dynamic> json) {
  return _MetronomeModel.fromJson(json);
}

/// @nodoc
mixin _$MetronomeModel {
  int get bpm => throw _privateConstructorUsedError;
  int get nowCount => throw _privateConstructorUsedError;
  int get maxCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetronomeModelCopyWith<MetronomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetronomeModelCopyWith<$Res> {
  factory $MetronomeModelCopyWith(
          MetronomeModel value, $Res Function(MetronomeModel) then) =
      _$MetronomeModelCopyWithImpl<$Res, MetronomeModel>;
  @useResult
  $Res call({int bpm, int nowCount, int maxCount});
}

/// @nodoc
class _$MetronomeModelCopyWithImpl<$Res, $Val extends MetronomeModel>
    implements $MetronomeModelCopyWith<$Res> {
  _$MetronomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpm = null,
    Object? nowCount = null,
    Object? maxCount = null,
  }) {
    return _then(_value.copyWith(
      bpm: null == bpm
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as int,
      nowCount: null == nowCount
          ? _value.nowCount
          : nowCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: null == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetronomeModelImplCopyWith<$Res>
    implements $MetronomeModelCopyWith<$Res> {
  factory _$$MetronomeModelImplCopyWith(_$MetronomeModelImpl value,
          $Res Function(_$MetronomeModelImpl) then) =
      __$$MetronomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bpm, int nowCount, int maxCount});
}

/// @nodoc
class __$$MetronomeModelImplCopyWithImpl<$Res>
    extends _$MetronomeModelCopyWithImpl<$Res, _$MetronomeModelImpl>
    implements _$$MetronomeModelImplCopyWith<$Res> {
  __$$MetronomeModelImplCopyWithImpl(
      _$MetronomeModelImpl _value, $Res Function(_$MetronomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpm = null,
    Object? nowCount = null,
    Object? maxCount = null,
  }) {
    return _then(_$MetronomeModelImpl(
      bpm: null == bpm
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as int,
      nowCount: null == nowCount
          ? _value.nowCount
          : nowCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: null == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetronomeModelImpl implements _MetronomeModel {
  const _$MetronomeModelImpl(
      {required this.bpm, required this.nowCount, required this.maxCount});

  factory _$MetronomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetronomeModelImplFromJson(json);

  @override
  final int bpm;
  @override
  final int nowCount;
  @override
  final int maxCount;

  @override
  String toString() {
    return 'MetronomeModel(bpm: $bpm, nowCount: $nowCount, maxCount: $maxCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetronomeModelImpl &&
            (identical(other.bpm, bpm) || other.bpm == bpm) &&
            (identical(other.nowCount, nowCount) ||
                other.nowCount == nowCount) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bpm, nowCount, maxCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetronomeModelImplCopyWith<_$MetronomeModelImpl> get copyWith =>
      __$$MetronomeModelImplCopyWithImpl<_$MetronomeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetronomeModelImplToJson(
      this,
    );
  }
}

abstract class _MetronomeModel implements MetronomeModel {
  const factory _MetronomeModel(
      {required final int bpm,
      required final int nowCount,
      required final int maxCount}) = _$MetronomeModelImpl;

  factory _MetronomeModel.fromJson(Map<String, dynamic> json) =
      _$MetronomeModelImpl.fromJson;

  @override
  int get bpm;
  @override
  int get nowCount;
  @override
  int get maxCount;
  @override
  @JsonKey(ignore: true)
  _$$MetronomeModelImplCopyWith<_$MetronomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
