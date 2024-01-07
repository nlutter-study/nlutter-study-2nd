import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:metronolog/features/auth/repositories/firebase_auth_repository.dart';
import 'package:metronolog/features/metronome/models/timer_model.dart';
import 'package:metronolog/features/metronome/repositories/timer_repository.dart';

final timerViewModel = AsyncNotifierProvider<TimerViewModel, TimerModel>(
  () => TimerViewModel(),
);

class TimerViewModel extends AsyncNotifier<TimerModel> {
  static final _dateFormatter = DateFormat("yyyy-MM-dd");

  late final FirebaseAuthRepository _authRepository;
  late final TimerRepository _timerRepository;

  Timer? _timer;
  int? _savedPracticeSeconds;

  @override
  FutureOr<TimerModel> build() async {
    _authRepository = ref.read(firebaseAuthRepository);
    _timerRepository = ref.read(timerRepository);

    final user = _authRepository.user;
    final formattedToday = _dateFormatter.format(DateTime.now());

    final remoteTodayModel = (user == null)
        ? null
        : await _timerRepository.getTimer(user.uid, formattedToday);

    _savedPracticeSeconds = remoteTodayModel?.practiceSeconds ?? 0;

    return remoteTodayModel ??
        TimerModel(
          uid: user?.uid ?? '',
          createdDate: formattedToday,
          practiceSeconds: 0,
        );
  }

  void start() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        final formattedToday = _dateFormatter.format(DateTime.now());
        if (formattedToday != state.value!.createdDate) {
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

  void _createNewTimer() {}

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
    _savedPracticeSeconds = state.value!.practiceSeconds;
  }

  int getSavedPracticeTime() {
    return _savedPracticeSeconds ?? 0;
  }
}
