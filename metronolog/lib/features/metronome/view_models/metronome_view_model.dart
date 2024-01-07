import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:metronolog/features/metronome/models/metronome_model.dart';

final metronomeViewModel =
    AsyncNotifierProvider<MetronomeViewModel, MetronomeModel>(
  () => MetronomeViewModel(),
);

class MetronomeViewModel extends AsyncNotifier<MetronomeModel> {
  Timer? _timer;

  late final AudioPlayer _normalPlayer;
  late final AudioPlayer _accentedPlayer;
  @override
  FutureOr<MetronomeModel> build() async {
    _normalPlayer = AudioPlayer();
    _normalPlayer.setAsset("assets/sounds/marimba_normal.mp3");
    _accentedPlayer = AudioPlayer();
    _accentedPlayer.setAsset("assets/sounds/marimba_accented.mp3");
    return const MetronomeModel(
      bpm: 154,
      nowCount: -1,
      maxCount: 4,
    );
  }

  void start() {
    _tick();
    _timer = Timer.periodic(
      Duration(milliseconds: 60000 ~/ state.value!.bpm),
      (timer) {
        _tick();
      },
    );
  }

  Future<void> _tick() async {
    int nowCount = state.value!.nowCount + 1;
    if (nowCount >= state.value!.maxCount) {
      nowCount = 0;
    }

    if (nowCount == 0) {
      await _accentedPlayer.seek(Duration.zero);
      _accentedPlayer.play();
    } else {
      await _normalPlayer.seek(Duration.zero);
      _normalPlayer.play();
    }

    state = AsyncValue.data(
      state.value!.copyWith(
        nowCount: nowCount,
      ),
    );

    debugPrint(
      "[${DateTime.now()}] count: ${state.value!.nowCount}",
    );
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
    state = AsyncValue.data(
      state.value!.copyWith(
        nowCount: -1,
      ),
    );
  }

  void upBpm() {
    stop();
    int nowBpm = state.value!.bpm + 1;
    if (nowBpm > 300) {
      nowBpm = 300;
    }
    _updateBpm(nowBpm);
  }

  void downBpm() {
    stop();
    int nowBpm = state.value!.bpm - 1;
    if (nowBpm < 20) {
      nowBpm = 20;
    }
    _updateBpm(nowBpm);
  }

  void _updateBpm(int bpm) {
    state = AsyncValue.data(
      state.value!.copyWith(
        bpm: bpm,
      ),
    );
  }
}
