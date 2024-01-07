import 'package:flutter/material.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  static const routeUrl = "/timeline";
  static const routeName = "timeline";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('timeline screen'),
      ),
    );
  }
}
