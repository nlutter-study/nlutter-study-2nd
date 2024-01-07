import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/view_models/auth_view_model.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/metronome/view_models/timer_view_model.dart';
import 'package:metronolog/utils/datetime_utils.dart';

class MetronomeTimerWidget extends ConsumerStatefulWidget {
  const MetronomeTimerWidget({super.key});

  @override
  ConsumerState<MetronomeTimerWidget> createState() =>
      _MetronomeTimerWidgetState();
}

class _MetronomeTimerWidgetState extends ConsumerState<MetronomeTimerWidget> {
  bool _isSaving = false;

  Future<void> _saveTimer() async {
    if (ref.read(authViewModel).value == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          showCloseIcon: true,
          content:
              Text('If you want save your practice time, you need to sign in.'),
        ),
      );
    }
    if (_isSaving || (ref.read(authViewModel).value == null)) {
      return;
    }

    setState(() {
      _isSaving = true;
    });

    await ref.read(timerViewModel.notifier).save();

    setState(() {
      _isSaving = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.timer_outlined,
          size: Sizes.size32,
        ),
        Column(
          children: [
            Text(
              formattedTimer(
                ref.watch(timerViewModel).value?.practiceSeconds ?? 0,
              ),
              style: const TextStyle(
                fontSize: Sizes.size32,
              ),
            ),
            Text(
              'Saved time today: ${formattedTimer(
                ref.watch(timerViewModel.notifier).getSavedPracticeTime(),
              )}',
              style: TextStyle(
                fontSize: Sizes.size12,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ),
        IconButton.outlined(
          onPressed: _saveTimer,
          icon: _isSaving
              ? const CircularProgressIndicator.adaptive()
              : const Icon(Icons.cloud_upload_outlined),
        ),
      ],
    );
  }
}
