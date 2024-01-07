import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/metronome/view_models/timers_view_model.dart';
import 'package:metronolog/features/note/models/note_model.dart';
import 'package:metronolog/features/note/view_models/note_view_model.dart';
import 'package:metronolog/utils/datetime_utils.dart';

class NoteTimelineNotes extends ConsumerStatefulWidget {
  const NoteTimelineNotes({super.key});

  @override
  ConsumerState<NoteTimelineNotes> createState() => _NoteTimelineNotesState();
}

class _NoteTimelineNotesState extends ConsumerState<NoteTimelineNotes> {
  Future<void> _showDeleteModalPopup(
    BuildContext context,
    WidgetRef ref,
    NoteModel note,
  ) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: const Text("Delete note"),
        message: const Text("Are you sure you want to delete this note?"),
        actions: [
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () async {
              await ref.read(noteViewModel.notifier).deleteNote(note);
              if (context.mounted && Navigator.of(context).canPop()) {
                Navigator.pop(context);
              }
            },
            child: const Text('Delete'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final noteModels =
        ref.watch(noteViewModel).value ?? List<NoteModel>.empty();
    final dateToTimerMap = ref.watch(timersViewModel).value ?? {};

    final widget = noteModels.isEmpty
        ? const Center(
            child: Text("Nothing note, yet..."),
          )
        : ListView.separated(
            itemCount: noteModels.length,
            itemBuilder: (context, index) {
              final note = noteModels.elementAt(index);
              final timer = dateToTimerMap[formattedToday(
                DateTime.fromMillisecondsSinceEpoch(
                  note.createdMilliSecondsSinceEpoch,
                ),
              )];
              final now = DateTime.now();

              final listTile = ListTile(
                onLongPress: () => _showDeleteModalPopup(context, ref, note),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(note.content),
                    Gaps.h8,
                    Text(
                      formattedElapsedTime(
                        nowDateTime: now,
                        targetMillisecondsSinceEpoch:
                            note.createdMilliSecondsSinceEpoch,
                      ),
                      style: TextStyle(
                        fontSize: Sizes.size12,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                leading: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size8,
                  ),
                  child: Text(
                    note.mood,
                    style: const TextStyle(
                      fontSize: Sizes.size28,
                    ),
                  ),
                ),
                trailing: (timer == null)
                    ? null
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            formattedTimer(timer.practiceSeconds),
                            style: const TextStyle(
                              fontSize: Sizes.size20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            timer.createdDate,
                            style: TextStyle(
                              fontSize: Sizes.size8,
                              color: Colors.grey.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
              );

              return listTile;
            },
            separatorBuilder: (context, index) => const Divider(),
          );
    return widget;
  }
}
