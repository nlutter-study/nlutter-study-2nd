import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MetronomeScreen extends ConsumerWidget {
  const MetronomeScreen({super.key});

  static const routeUrl = "/metronome";
  static const routeName = "metronome";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Text(
          'metronome screen',
        ),
      ),
    );
  }
}
