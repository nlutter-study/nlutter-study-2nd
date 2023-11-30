import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color? backgroundColor;
  final bool? enabled;

  const LargeButton(
      {super.key,
      this.onTap,
      required this.text,
      this.backgroundColor,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = enabled == false
        ? Colors.grey.shade700
        : this.backgroundColor ?? Colors.black;

    final foregroundColor =
        enabled == false ? Colors.grey.shade300 : Colors.white;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: foregroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
