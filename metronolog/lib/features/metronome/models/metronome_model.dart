import 'package:freezed_annotation/freezed_annotation.dart';

part 'metronome_model.freezed.dart';
part 'metronome_model.g.dart';

@freezed
class MetronomeModel with _$MetronomeModel {
  const factory MetronomeModel({
    required int bpm,
    required int nowCount,
    required int maxCount,
  }) = _MetronomeModel;

  factory MetronomeModel.fromJson(Map<String, dynamic> json) =>
      _$MetronomeModelFromJson(json);
}
