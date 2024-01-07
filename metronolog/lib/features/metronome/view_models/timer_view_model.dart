import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/repositories/firebase_auth_repository.dart';
import 'package:metronolog/features/metronome/models/timer_model.dart';
import 'package:metronolog/features/metronome/repositories/timer_repository.dart';
import 'package:metronolog/features/metronome/view_models/timers_view_model.dart';
import 'package:metronolog/utils/datetime_utils.dart';

final timerViewModel = AsyncNotifierProvider<TimerViewModel, TimerModel>(
  () => TimerViewModel(),
);

class TimerViewModel extends AsyncNotifier<TimerModel> {
  late final FirebaseAuthRepository _authRepository;
  late final TimerRepository _timerRepository;

  Timer? _timer;
  int? _savedPracticeSeconds;

  @override
  FutureOr<TimerModel> build() async {
    _authRepository = ref.read(firebaseAuthRepository);
    _timerRepository = ref.read(timerRepository);

    final user = _authRepository.user;
    final today = formattedToday(DateTime.now());

    final remoteTodayModel = (user == null)
        ? null
        : await _timerRepository.getTimer(user.uid, today);

    _savedPracticeSeconds = remoteTodayModel?.practiceSeconds ?? 0;

    return remoteTodayModel ??
        TimerModel(
          uid: user?.uid ?? '',
          createdDate: today,
          practiceSeconds: 0,
        );
  }

  void start() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        final today = formattedToday(DateTime.now());
        if (today != state.value!.createdDate) {
          _createNewTimer();
        }
        state = AsyncValue.data(
          state.value!.copyWith(
            practiceSeconds: state.value!.practiceSeconds + 1,
          ),
        );
        debugPrint("timer: ${state.value!}");
      },
    );
  }

  void _createNewTimer() {
    // TODO: 하루 지난 시점에는 어떻게 처리할 것인지 고민 필요
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> save() async {
    final user = _authRepository.user;
    if (user == null) {
      debugPrint('failed save timer: user is null');
      return;
    }
    state = AsyncData(
      state.value!.copyWith(
        uid: user.uid,
      ),
    );
    await _timerRepository.upsertTimer(state.value!);
    await ref.read(timersViewModel.notifier).reload();
    _savedPracticeSeconds = state.value!.practiceSeconds;
  }

  int getSavedPracticeTime() {
    return _savedPracticeSeconds ?? 0;
  }
}
