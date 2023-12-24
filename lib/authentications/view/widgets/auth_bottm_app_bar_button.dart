import 'package:challenge/constants/sizes.dart';
import 'package:challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class AuthBottomAppBarButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const AuthBottomAppBarButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: Sizes.size40,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: getTextColorByMode(isDark)),
        ),
        child: Text(text),
      ),
    );
  }
}
