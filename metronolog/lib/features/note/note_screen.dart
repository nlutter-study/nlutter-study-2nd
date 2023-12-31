import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  static const routeUrl = "/note";
  static const routeName = "note";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('note screen'),
      ),
    );
  }
}
