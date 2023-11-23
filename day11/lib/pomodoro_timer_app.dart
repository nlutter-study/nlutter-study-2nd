import 'package:day11/timer_page.dart';
import 'package:flutter/material.dart';

class PomodoroTimerApp extends StatelessWidget {
  const PomodoroTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    const myColor = Color(0xFFE64D3D);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TimerPage(),
      theme: ThemeData(
        primaryColor: myColor,
        scaffoldBackgroundColor: myColor,
      ),
    );
  }
}
