import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/view_models/auth_view_model.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/note/view_models/note_view_model.dart';
import 'package:metronolog/utils/firebase_exception_handler.dart';

Future<void> showNoteWriteBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context.findRootAncestorStateOfType<NavigatorState>()!.context,
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    builder: (context) => const _NoteWrite(),
  );
}

class _NoteWrite extends ConsumerStatefulWidget {
  const _NoteWrite({super.key});

  @override
  ConsumerState<_NoteWrite> createState() => _NoteWriteState();
}

class _NoteWriteState extends ConsumerState<_NoteWrite> {
  static final moods = [
    "👍",
    "😄",
    "😍",
    "😊",
    "🥳",
    "😑",
    "😭",
    "🤬",
    "🫠",
    "🤮",
  ];

  late final TextEditingController _noteEditingController;
  late final FocusNode _noteTextFocusNode;

  int _moodIndex = 0;
  bool _isOpenMoodTap = false;
  bool _isAddingNote = false;

  void _toggleMoodTap() {
    setState(() {
      _isOpenMoodTap = !_isOpenMoodTap;
    });
  }

  void _eachMoodTap(int index) {
    debugPrint(index.toString());
    _moodIndex = index;
    _toggleMoodTap();
  }

  Future<void> _addNote() async {
    if (_isAddingNote) {
      return;
    }
    _isAddingNote = true;

    await ref.read(noteViewModel.notifier).createNote(
          content: _noteEditingController.value.text,
          mood: moods.elementAt(_moodIndex),
        );

    _isAddingNote = false;
    if (ref.read(noteViewModel).hasError && context.mounted) {
      showFirebaseExceptionSnackBar(
          context: context,
          error: ref.read(authViewModel).error,
          message:
              "Please, retry to add note. Something wrong when to add this note.");
      return;
    }

    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    super.initState();
    _noteEditingController = TextEditingController();
    _noteTextFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _noteTextFocusNode.dispose();
    _noteEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _noteTextFocusNode.unfocus,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: const Text(
              'New note',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                _buildContentArea(),
                _buildFloatingAddButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.size12,
        horizontal: Sizes.size32,
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "Note :",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Sizes.size16,
              ),
            ),
            subtitle: GestureDetector(
              onTap: _noteTextFocusNode.requestFocus,
              child: TextField(
                controller: _noteEditingController,
                focusNode: _noteTextFocusNode,
                maxLines: 50,
                minLines: 1,
                decoration: const InputDecoration(
                  hintText: 'Write down your log.',
                ),
              ),
            ),
          ),
          Gaps.h12,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: Sizes.size12),
                child: Text(
                  "Mood : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Sizes.size16,
                  ),
                ),
              ),
              IconButton.outlined(
                onPressed: _toggleMoodTap,
                iconSize: Sizes.size32,
                style: IconButton.styleFrom(
                  highlightColor:
                      Theme.of(context).colorScheme.tertiaryContainer,
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                  ),
                ),
                icon: Text(
                  moods.elementAt(_moodIndex),
                  style: const TextStyle(fontSize: Sizes.size20),
                ),
              ),
              if (_isOpenMoodTap)
                Column(
                  children: [
                    Gaps.h2,
                    _buildMoodPickUp(),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMoodPickUp() {
    return Container(
      width: 230,
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        minHeight: Sizes.size36,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(Sizes.size12),
          bottomRight: Radius.circular(Sizes.size12),
          bottomLeft: Radius.circular(Sizes.size12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Wrap(
            children: [
              for (int i = 0; i < moods.length; i++)
                GestureDetector(
                  onTap: () => _eachMoodTap(i),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size10,
                      vertical: Sizes.size8,
                    ),
                    child: Text(
                      moods.elementAt(i),
                      style: const TextStyle(
                        fontSize: Sizes.size20,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingAddButton() {
    return Positioned(
      right: Sizes.size16,
      bottom: Sizes.size16,
      child: IconButton.filledTonal(
        onPressed: _addNote,
        iconSize: Sizes.size32,
        icon: ref.watch(noteViewModel).isLoading
            ? const CircularProgressIndicator.adaptive(
                strokeWidth: Sizes.size32,
              )
            : const Icon(Icons.add),
      ),
    );
  }
}
