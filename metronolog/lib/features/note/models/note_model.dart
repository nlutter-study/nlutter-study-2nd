import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @Default("") String content,
    @Default("👍") String mood,
    required String uid,
    @Default(0) int dailyPracticeTimeSeconds,
    required int createdMilliSecondsSinceEpoch,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}
