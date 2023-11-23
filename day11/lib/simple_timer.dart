import 'dart:async';

enum SimpleTimerStatus {
  ready,
  running,
  paused,
}

class SimpleTimer {
  int _remainingSeconds = 0;
  int _duration = 0;

  Timer? _timer;

  Function? _callback;

  Function? _onFinished;

  SimpleTimer();

  int get remainingSeconds => _remainingSeconds;

  set duration(int duration) {
    _duration = duration;
  }

  set callback(Function callback) {
    _callback = callback;
  }

  set onFinished(Function onFinished) {
    _onFinished = onFinished;
  }

  start() {
    _remainingSeconds = _duration;
    _setTimer();
  }

  _setTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _remainingSeconds--;
      _callback?.call();
      if (_remainingSeconds == 0) {
        _timer?.cancel();
        _onFinished?.call();
      }
    });
  }

  pause() {
    _timer?.cancel();
  }

  resume() {
    _setTimer();
  }

  reset() {
    _timer?.cancel();
    _remainingSeconds = _duration;
  }

  dispose() {
    _timer?.cancel();
  }
}
