import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/repositories/firebase_auth_repository.dart';
import 'package:metronolog/features/note/models/note_model.dart';
import 'package:metronolog/features/note/repositories/note_repository.dart';

final noteViewModel = AsyncNotifierProvider<NoteViewModel, List<NoteModel>>(
  () => NoteViewModel(),
);

class NoteViewModel extends AsyncNotifier<List<NoteModel>> {
  late final NoteRepository _noteRepository;
  late final FirebaseAuthRepository _authRepository;

  @override
  FutureOr<List<NoteModel>> build() async {
    _noteRepository = ref.read(noteRepository);
    _authRepository = ref.read(firebaseAuthRepository);
    debugPrint("build: ${state.isLoading}");
    return await _noteRepository.readNotes(_authRepository.user!.uid);
  }

  Future<void> createNote({
    required String content,
    required String mood,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final user = _authRepository.user!;
      await _noteRepository.createNote(
        NoteModel(
          content: content,
          mood: mood,
          uid: user.uid,
          dailyPracticeTimeSeconds: 0,
          createdMilliSecondsSinceEpoch: DateTime.now().millisecondsSinceEpoch,
        ),
      );
      return await _noteRepository.readNotes(user.uid);
    });
  }
}
