import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.navigationShell,
  });

  static const routeUrl = '/';
  static const routeName = 'main';

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.background.withOpacity(0),
        title: const Text('metronolog.'),
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Theme.of(context).colorScheme.background.withOpacity(0),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        currentIndex: navigationShell.currentIndex,
        onTap: _goBranch,
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
