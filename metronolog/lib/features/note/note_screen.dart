import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/sign_check_screen.dart';
import 'package:metronolog/features/auth/view_models/auth_view_model.dart';
import 'package:metronolog/features/note/widgets/note_timeline.dart';

class NoteScreen extends ConsumerWidget {
  const NoteScreen({super.key});

  static const routeUrl = "/note";
  static const routeName = "note";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authViewModel).value == null
        ? const SignCheckScreen()
        : const NoteTimeline();
  }
}
