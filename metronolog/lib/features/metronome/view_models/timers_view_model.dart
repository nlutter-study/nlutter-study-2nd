import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/repositories/firebase_auth_repository.dart';
import 'package:metronolog/features/metronome/models/timer_model.dart';
import 'package:metronolog/features/metronome/repositories/timer_repository.dart';

final timersViewModel =
    AsyncNotifierProvider<TimersViewModel, Map<String, TimerModel>>(
  () => TimersViewModel(),
);

class TimersViewModel extends AsyncNotifier<Map<String, TimerModel>> {
  late final FirebaseAuthRepository _authRepository;
  late final TimerRepository _timerRepository;

  @override
  FutureOr<Map<String, TimerModel>> build() async {
    _authRepository = ref.read(firebaseAuthRepository);
    _timerRepository = ref.read(timerRepository);

    final user = _authRepository.user;
    final timers = (user == null)
        ? List<TimerModel>.empty()
        : await _timerRepository.getTimers(user.uid);

    return {for (var timer in timers) timer.createdDate: timer};
  }

  Future<void> reload() async {
    state = const AsyncData(<String, TimerModel>{});

    final user = _authRepository.user;
    final timers = (user == null)
        ? List<TimerModel>.empty()
        : await _timerRepository.getTimers(user.uid);

    state = AsyncData(
      {for (var timer in timers) timer.createdDate: timer},
    );
  }
}
