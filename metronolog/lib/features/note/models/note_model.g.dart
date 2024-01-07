// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      content: json['content'] as String? ?? "",
      mood: json['mood'] as String? ?? "👍",
      uid: json['uid'] as String,
      dailyPracticeTimeSeconds: json['dailyPracticeTimeSeconds'] as int? ?? 0,
      createdMilliSecondsSinceEpoch:
          json['createdMilliSecondsSinceEpoch'] as int,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'mood': instance.mood,
      'uid': instance.uid,
      'dailyPracticeTimeSeconds': instance.dailyPracticeTimeSeconds,
      'createdMilliSecondsSinceEpoch': instance.createdMilliSecondsSinceEpoch,
    };
