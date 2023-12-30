import 'package:flutter/material.dart';
import 'package:metronolog/features/metronome/metronome_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const routeUrl = '/';
  static const routeName = 'main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.background.withOpacity(0),
        title: const Text('metronolog.'),
      ),
      body: const MetronomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Theme.of(context).colorScheme.background.withOpacity(0),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            label: "note",
            icon: Icon(Icons.note_alt_outlined),
          ),
          BottomNavigationBarItem(
            label: "metronome",
            icon: Icon(Icons.timer_outlined),
          ),
          BottomNavigationBarItem(
            label: "timeline",
            icon: Icon(Icons.insert_chart_outlined),
          ),
        ],
      ),
    );
  }
}
