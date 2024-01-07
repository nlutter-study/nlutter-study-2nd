// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerModelImpl _$$TimerModelImplFromJson(Map<String, dynamic> json) =>
    _$TimerModelImpl(
      uid: json['uid'] as String,
      createdDate: json['createdDate'] as String,
      practiceSeconds: json['practiceSeconds'] as int,
    );

Map<String, dynamic> _$$TimerModelImplToJson(_$TimerModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'createdDate': instance.createdDate,
      'practiceSeconds': instance.practiceSeconds,
    };
