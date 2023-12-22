import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
    required this.big,
    this.signUp = false,
  });

  final bool disabled;
  final bool big;
  final bool signUp;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: big ? 1 : 0.2,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          color: disabled
              ? Colors.grey.shade300
              : signUp
                  ? Colors.blue
                  : Colors.black,
          borderRadius: BorderRadius.circular(
            Sizes.size40,
          ),
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(
            milliseconds: 300,
          ),
          style: TextStyle(
            fontSize: Sizes.size16,
            fontWeight: FontWeight.w600,
            color: disabled ? Colors.grey.shade400 : Colors.white,
          ),
          child: Text(
            signUp ? "Sign up" : "Next",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
