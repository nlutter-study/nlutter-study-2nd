// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metronome_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetronomeModelImpl _$$MetronomeModelImplFromJson(Map<String, dynamic> json) =>
    _$MetronomeModelImpl(
      bpm: json['bpm'] as int,
      nowCount: json['nowCount'] as int,
      maxCount: json['maxCount'] as int,
    );

Map<String, dynamic> _$$MetronomeModelImplToJson(
        _$MetronomeModelImpl instance) =>
    <String, dynamic>{
      'bpm': instance.bpm,
      'nowCount': instance.nowCount,
      'maxCount': instance.maxCount,
    };
