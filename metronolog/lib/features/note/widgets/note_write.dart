import 'package:flutter/material.dart';
import 'package:metronolog/features/constants/sizes.dart';

Future<void> showNoteWriteBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context.findRootAncestorStateOfType<NavigatorState>()!.context,
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    builder: (context) => const _NoteWrite(),
  );
}

class _NoteWrite extends StatefulWidget {
  const _NoteWrite({super.key});

  @override
  State<_NoteWrite> createState() => _NoteWriteState();
}

class _NoteWriteState extends State<_NoteWrite> {
  static final moods = [
    "👍",
    "😄",
    "😍",
    "😊",
    "🥳",
    "😑"
        "😭",
    "🤬",
    "🫠",
    "🤮",
  ];
  int moodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            'New log.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size12,
            horizontal: Sizes.size32,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Mood : ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Sizes.size16,
                    ),
                  ),
                  IconButton.outlined(
                    onPressed: () {},
                    iconSize: Sizes.size32,
                    icon: Text(
                      moods.elementAt(moodIndex),
                      style: const TextStyle(fontSize: Sizes.size20),
                    ),
                  ),
                ],
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Note :",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Sizes.size16,
                  ),
                ),
                subtitle: TextField(
                  maxLines: 50,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Write down your log.',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
