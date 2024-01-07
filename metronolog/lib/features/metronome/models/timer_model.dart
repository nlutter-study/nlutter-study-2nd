import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_model.freezed.dart';
part 'timer_model.g.dart';

@freezed
class TimerModel with _$TimerModel {
  const factory TimerModel({
    required String uid,
    required String createdDate,
    required int practiceSeconds,
  }) = _TimerModel;

  factory TimerModel.fromJson(Map<String, dynamic> json) =>
      _$TimerModelFromJson(json);
}
