import 'package:day22/pages/bottom_navigation_page.dart';
import 'package:flutter/material.dart';

class ThreadApp extends StatelessWidget {
  const ThreadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Thread',
      home: BottomNavigationPage(),
    );
  }
}
