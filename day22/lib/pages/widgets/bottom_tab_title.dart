import 'package:flutter/material.dart';

class BottomTabTitle extends StatelessWidget {
  final String text;
  const BottomTabTitle(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
