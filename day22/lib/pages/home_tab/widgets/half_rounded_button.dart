import 'package:flutter/material.dart';

enum HalfRoundedButtonDirection {
  upper,
  lower,
}

class HalfRoundedButton extends StatelessWidget {
  final HalfRoundedButtonDirection direction;
  final String label;
  final Color labelColor;
  final VoidCallback onPressed;

  const HalfRoundedButton({
    Key? key,
    required this.direction,
    required this.label,
    this.labelColor = Colors.black,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(20);

    final borderRadius = direction == HalfRoundedButtonDirection.lower
        ? const BorderRadius.only(
            bottomLeft: radius,
            bottomRight: radius,
          )
        : const BorderRadius.only(
            topLeft: radius,
            topRight: radius,
          );

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: borderRadius,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: labelColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
