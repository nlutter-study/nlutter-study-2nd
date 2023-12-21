import 'package:challenge/router.dart';
import 'package:flutter/material.dart';

class ThreadScreen {
  final Widget screen;
  final IconData icon;
  final String label;
  final MainNavTab? tabRoute;
  ThreadScreen({
    required this.screen,
    required this.icon,
    required this.label,
    this.tabRoute,
  });
}
