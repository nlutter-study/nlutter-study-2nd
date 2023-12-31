import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/metronome/view_models/test_view_model.dart';

class MetronomeScreen extends ConsumerWidget {
  const MetronomeScreen({super.key});

  static const routeUrl = "/metronome";
  static const routeName = "metronome";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(
          'metronome screen\n${ref.watch(testViewModel).value}',
        ),
      ),
    );
  }
}
