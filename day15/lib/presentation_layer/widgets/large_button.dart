import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color? backgroundColor;

  const LargeButton({super.key, this.onTap, required this.text, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor ?? Colors.black,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
