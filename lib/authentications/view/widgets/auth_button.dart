import 'package:challenge/constants/sizes.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final bool enabled;
  final String text;
  final void Function() onTap;

  const AuthButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.enabled,
  });

  void _onTap() {
    if (!enabled) return;
    onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        width: double.infinity,
        height: Sizes.size48,
        alignment: Alignment.center,
        color: enabled ? Colors.blueAccent : Colors.grey,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
