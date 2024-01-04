// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  String get content => throw _privateConstructorUsedError;
  String get mood => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  int get dailyPracticeTimeSeconds => throw _privateConstructorUsedError;
  int get createdMilliSecondsSinceEpoch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call(
      {String content,
      String mood,
      String uid,
      int dailyPracticeTimeSeconds,
      int createdMilliSecondsSinceEpoch});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? mood = null,
    Object? uid = null,
    Object? dailyPracticeTimeSeconds = null,
    Object? createdMilliSecondsSinceEpoch = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      dailyPracticeTimeSeconds: null == dailyPracticeTimeSeconds
          ? _value.dailyPracticeTimeSeconds
          : dailyPracticeTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      createdMilliSecondsSinceEpoch: null == createdMilliSecondsSinceEpoch
          ? _value.createdMilliSecondsSinceEpoch
          : createdMilliSecondsSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      String mood,
      String uid,
      int dailyPracticeTimeSeconds,
      int createdMilliSecondsSinceEpoch});
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? mood = null,
    Object? uid = null,
    Object? dailyPracticeTimeSeconds = null,
    Object? createdMilliSecondsSinceEpoch = null,
  }) {
    return _then(_$NoteModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      dailyPracticeTimeSeconds: null == dailyPracticeTimeSeconds
          ? _value.dailyPracticeTimeSeconds
          : dailyPracticeTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      createdMilliSecondsSinceEpoch: null == createdMilliSecondsSinceEpoch
          ? _value.createdMilliSecondsSinceEpoch
          : createdMilliSecondsSinceEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteModelImpl implements _NoteModel {
  const _$NoteModelImpl(
      {this.content = "",
      this.mood = "👍",
      required this.uid,
      this.dailyPracticeTimeSeconds = 0,
      required this.createdMilliSecondsSinceEpoch});

  factory _$NoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteModelImplFromJson(json);

  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String mood;
  @override
  final String uid;
  @override
  @JsonKey()
  final int dailyPracticeTimeSeconds;
  @override
  final int createdMilliSecondsSinceEpoch;

  @override
  String toString() {
    return 'NoteModel(content: $content, mood: $mood, uid: $uid, dailyPracticeTimeSeconds: $dailyPracticeTimeSeconds, createdMilliSecondsSinceEpoch: $createdMilliSecondsSinceEpoch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(
                    other.dailyPracticeTimeSeconds, dailyPracticeTimeSeconds) ||
                other.dailyPracticeTimeSeconds == dailyPracticeTimeSeconds) &&
            (identical(other.createdMilliSecondsSinceEpoch,
                    createdMilliSecondsSinceEpoch) ||
                other.createdMilliSecondsSinceEpoch ==
                    createdMilliSecondsSinceEpoch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, mood, uid,
      dailyPracticeTimeSeconds, createdMilliSecondsSinceEpoch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteModelImplToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
      {final String content,
      final String mood,
      required final String uid,
      final int dailyPracticeTimeSeconds,
      required final int createdMilliSecondsSinceEpoch}) = _$NoteModelImpl;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$NoteModelImpl.fromJson;

  @override
  String get content;
  @override
  String get mood;
  @override
  String get uid;
  @override
  int get dailyPracticeTimeSeconds;
  @override
  int get createdMilliSecondsSinceEpoch;
  @override
  @JsonKey(ignore: true)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
