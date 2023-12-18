import 'package:day11/simple_timer.dart';
import 'package:flutter/material.dart';

enum TimerStatus {
  ready,
  running,
  paused,
  finished,
}

enum TimerType { pomodoro, shortBreak }

extension TimerTypeStatus on TimerType {
  String get label {
    switch (this) {
      case TimerType.pomodoro:
        return 'Pomodoro!!!';
      case TimerType.shortBreak:
        return 'Short Break!!!';
    }
  }
}

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final ScrollController _horizontalScrollController = ScrollController();

  int _remaindSeconds = 0;
  int _round = 0;
  int _goal = 0;

  bool _testMode = false;

  int _selectedPomodoroMinutes = 25;
  final int _breakDurationSeconds = 5;
  final SimpleTimer _simpleTimer = SimpleTimer();

  TimerStatus _timerStatus = TimerStatus.ready;

  TimerType _timerType = TimerType.pomodoro;

  @override
  void initState() {
    super.initState();
    _horizontalScrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _horizontalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _title(),
            const SizedBox(height: 80),
            _remainedTime(),
            const SizedBox(height: 40),
            _selectTimer(),
            const SizedBox(height: 40),
            _timerButtons(),
            const SizedBox(height: 40),
            _dashboard(),
          ],
        ),
      ),
    );
  }

  _title() {
    const title = 'POMOTIMER';
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }

  _remainedTime() {
    final minutes = _remaindSeconds ~/ 60;
    final seconds = _remaindSeconds % 60;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _numberCard(minutes),
        _styledColon(),
        _numberCard(seconds),
      ],
    );
  }

  _numberCard(int number) {
    const width = 150.0;
    const height = 200.0;
    const gap = 6.0;
    final borderRadius = BorderRadius.circular(6);
    const shadowColor = Colors.white54;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: gap * 2),
          width: width - gap * 4,
          height: height,
          decoration: BoxDecoration(
            color: shadowColor,
            borderRadius: borderRadius,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: gap, top: gap),
          width: width - gap * 2,
          height: height,
          decoration: BoxDecoration(
            color: shadowColor,
            borderRadius: borderRadius,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: gap * 2),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius,
          ),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _styledColon() {
    return const SizedBox(
      width: 40,
      height: 200,
      child: Center(
        child: Text(
          ':',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.white38,
          ),
        ),
      ),
    );
  }

  _selectTimer() {
    const timeList = [15, 20, 25, 30, 35];
    return SizedBox(
      height: 60,
      child: Stack(
        children: [
          ListView.separated(
            controller: _horizontalScrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                _toggleBox(minutes: timeList[index]),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: timeList.length,
          ),
          IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 3.1,
                  colors: [
                    Theme.of(context).primaryColor.withAlpha(0),
                    Theme.of(context).primaryColor,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _toggleBox({required int minutes}) {
    final bool selected = _selectedPomodoroMinutes == minutes;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPomodoroMinutes = minutes;
        });
      },
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.transparent,
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            '$minutes',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: selected ? Theme.of(context).primaryColor : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _timerButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (_timerStatus == TimerStatus.ready ||
            _timerStatus == TimerStatus.paused ||
            _timerStatus == TimerStatus.finished)
          _timerButton(
            icon: Icons.play_arrow,
            onPressed: _onStartButtonPressed,
          ),
        if (_timerStatus == TimerStatus.running)
          _timerButton(
            icon: Icons.pause,
            onPressed: _onPauseButtonPressed,
          ),
        if (_timerStatus == TimerStatus.paused) const SizedBox(width: 20),
        if (_timerStatus == TimerStatus.paused)
          _timerButton(
            icon: Icons.refresh,
            onPressed: _onResetButtonPressed,
          ),
      ],
    );
  }

  Widget _timerButton(
      {required IconData icon, required VoidCallback onPressed}) {
    const color = Color(0xFFBF3A2B);
    const size = 100.0;

    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: 48,
          color: Colors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }

  _onStartButtonPressed() {
    if (_timerStatus == TimerStatus.ready) {
      _startNewPomodoroTimer();
    } else if (_timerStatus == TimerStatus.paused) {
      _resumePomodoroTimer();
    }
  }

  _startNewPomodoroTimer() {
    _timerType = TimerType.pomodoro;
    _timerStatus = TimerStatus.running;

    _simpleTimer.duration = _testMode ? 3 : _selectedPomodoroMinutes * 60;
    _simpleTimer.callback = () {
      setState(() {
        _remaindSeconds = _simpleTimer.remainingSeconds;
      });
    };
    _simpleTimer.onFinished = () {
      _timerStatus = TimerStatus.finished;
      _round++;
      if (_round == 4) {
        _round = 0;
        _goal++;
        if (_goal == 12) {
          _goal = 0;
        }
      }
      _startNewBreakTimer();
    };
    _simpleTimer.start();

    setState(() {});
  }

  _startNewBreakTimer() {
    _timerType = TimerType.shortBreak;
    _simpleTimer.duration = _testMode ? 3 : _breakDurationSeconds;
    _simpleTimer.callback = () {
      setState(() {
        _remaindSeconds = _simpleTimer.remainingSeconds;
      });
    };
    _simpleTimer.onFinished = () {
      _timerStatus = TimerStatus.ready;
    };
    _simpleTimer.start();
    setState(() {});
  }

  _resumePomodoroTimer() {
    _simpleTimer.resume();
    setState(() {
      _timerStatus = TimerStatus.running;
    });
  }

  _onPauseButtonPressed() {
    _simpleTimer.pause();
    setState(() {
      _timerStatus = TimerStatus.paused;
    });
  }

  _onResetButtonPressed() {
    _simpleTimer.reset();
    setState(() {
      _timerType = TimerType.pomodoro;
      _timerStatus = TimerStatus.ready;
      _remaindSeconds = _selectedPomodoroMinutes * 60;
    });
  }

  _dashboard() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '$_round/4',
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white54,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '$_goal/12',
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'ROUND',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'GOAL',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Test Mode',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Switch(
                value: _testMode,
                onChanged: (value) {
                  setState(() {
                    _testMode = value;
                  });
                }),
            Text(
              'Timer Status: ${_timerType.label}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ],
    );
  }
}
