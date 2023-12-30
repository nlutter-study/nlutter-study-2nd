// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestModel _$TestModelFromJson(Map<String, dynamic> json) {
  return _TestModel.fromJson(json);
}

/// @nodoc
mixin _$TestModel {
  String get test => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestModelCopyWith<TestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestModelCopyWith<$Res> {
  factory $TestModelCopyWith(TestModel value, $Res Function(TestModel) then) =
      _$TestModelCopyWithImpl<$Res, TestModel>;
  @useResult
  $Res call({String test});
}

/// @nodoc
class _$TestModelCopyWithImpl<$Res, $Val extends TestModel>
    implements $TestModelCopyWith<$Res> {
  _$TestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
  }) {
    return _then(_value.copyWith(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestModelImplCopyWith<$Res>
    implements $TestModelCopyWith<$Res> {
  factory _$$TestModelImplCopyWith(
          _$TestModelImpl value, $Res Function(_$TestModelImpl) then) =
      __$$TestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String test});
}

/// @nodoc
class __$$TestModelImplCopyWithImpl<$Res>
    extends _$TestModelCopyWithImpl<$Res, _$TestModelImpl>
    implements _$$TestModelImplCopyWith<$Res> {
  __$$TestModelImplCopyWithImpl(
      _$TestModelImpl _value, $Res Function(_$TestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
  }) {
    return _then(_$TestModelImpl(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestModelImpl implements _TestModel {
  const _$TestModelImpl({required this.test});

  factory _$TestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestModelImplFromJson(json);

  @override
  final String test;

  @override
  String toString() {
    return 'TestModel(test: $test)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestModelImpl &&
            (identical(other.test, test) || other.test == test));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, test);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestModelImplCopyWith<_$TestModelImpl> get copyWith =>
      __$$TestModelImplCopyWithImpl<_$TestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestModelImplToJson(
      this,
    );
  }
}

abstract class _TestModel implements TestModel {
  const factory _TestModel({required final String test}) = _$TestModelImpl;

  factory _TestModel.fromJson(Map<String, dynamic> json) =
      _$TestModelImpl.fromJson;

  @override
  String get test;
  @override
  @JsonKey(ignore: true)
  _$$TestModelImplCopyWith<_$TestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
