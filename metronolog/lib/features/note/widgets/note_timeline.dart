import 'package:flutter/material.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/note/widgets/note_timeline_notes.dart';
import 'package:metronolog/features/note/widgets/note_write.dart';

class NoteTimeline extends StatelessWidget {
  const NoteTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const NoteTimelineNotes(),
        Positioned(
          right: Sizes.size16,
          bottom: Sizes.size20,
          child: IconButton.filledTonal(
            onPressed: () => showNoteWriteBottomSheet(context),
            iconSize: Sizes.size36,
            icon: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
