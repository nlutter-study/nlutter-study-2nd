import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/metronome/models/metronome_model.dart';
import 'package:metronolog/features/metronome/view_models/metronome_view_model.dart';
import 'package:metronolog/features/metronome/view_models/timer_view_model.dart';
import 'package:metronolog/features/metronome/widgets/metronome_timer_widget.dart';

class MetronomeScreen extends ConsumerStatefulWidget {
  const MetronomeScreen({super.key});

  static const routeUrl = "/metronome";
  static const routeName = "metronome";

  @override
  ConsumerState<MetronomeScreen> createState() => _MetronomeScreenState();
}

class _MetronomeScreenState extends ConsumerState<MetronomeScreen> {
  bool _isPlay = false;

  void _play() {
    ref.read(metronomeViewModel.notifier).start();
    ref.read(timerViewModel.notifier).start();
    setState(() {
      _isPlay = true;
    });
  }

  void _stop() {
    ref.read(metronomeViewModel.notifier).stop();
    ref.read(timerViewModel.notifier).stop();
    setState(() {
      _isPlay = false;
    });
  }

  void _upBpm() {
    ref.read(metronomeViewModel.notifier).upBpm();
    ref.read(timerViewModel.notifier).stop();
    setState(() {
      _isPlay = false;
    });
  }

  void _downBpm() {
    ref.read(metronomeViewModel.notifier).downBpm();
    ref.read(timerViewModel.notifier).stop();
    setState(() {
      _isPlay = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final metronome = ref.watch(metronomeViewModel).value;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MetronomeTimerWidget(),
            Gaps.h44,
            _buildMetronomeIndicators(metronome),
            Gaps.h72,
            _buildPlayButton(),
            Gaps.h72,
            _buildBpmWidget(metronome),
            Gaps.h16,
            _buildBeatWidget(),
          ],
        ),
      ),
    );
  }

  Row _buildMetronomeIndicators(MetronomeModel? metronome) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < (metronome?.maxCount ?? 4); i++)
          Container(
            width: Sizes.size44,
            height: Sizes.size44,
            decoration: BoxDecoration(
              color: (metronome?.nowCount == i)
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(Sizes.size60),
            ),
          ),
      ],
    );
  }

  IconButton _buildPlayButton() {
    return IconButton.filledTonal(
      onPressed: () => _isPlay ? _stop() : _play(),
      iconSize: Sizes.size72,
      icon: Icon(
        _isPlay ? Icons.stop : Icons.play_arrow,
      ),
    );
  }

  Widget _buildBpmWidget(MetronomeModel? metronome) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.size44),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "BPM:",
            style: TextStyle(
              fontSize: Sizes.size24,
            ),
          ),
          IconButton(
            onPressed: _downBpm,
            iconSize: Sizes.size32,
            color: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.arrow_downward),
          ),
          GestureDetector(
            onVerticalDragUpdate: (dragUpdateDetails) {
              if (dragUpdateDetails.delta.dy < -1) {
                _upBpm();
                return;
              }
              if (dragUpdateDetails.delta.dy > 1) {
                _downBpm();
                return;
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: 80,
              child: Text(
                "${metronome?.bpm}",
                style: const TextStyle(
                  fontSize: Sizes.size36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: _upBpm,
            iconSize: Sizes.size32,
            color: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.arrow_upward),
          ),
        ],
      ),
    );
  }

  Widget _buildBeatWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.size44),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Beat:",
            style: TextStyle(
              fontSize: Sizes.size24,
            ),
          ),
          Container(),
          const Text(
            "4",
            style: TextStyle(
              fontSize: Sizes.size36,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "/",
            style: TextStyle(
              fontSize: Sizes.size36,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "4",
            style: TextStyle(
              fontSize: Sizes.size36,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            width: Sizes.size16,
          ),
        ],
      ),
    );
  }
}
