import 'package:flutter/material.dart';

class MetronologTitle extends StatelessWidget {
  const MetronologTitle({
    super.key,
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'metronolog.',
      style: TextStyle(
        fontSize: textSize,
        fontWeight: FontWeight.w600,
        letterSpacing: -1,
      ),
    );
  }
}
