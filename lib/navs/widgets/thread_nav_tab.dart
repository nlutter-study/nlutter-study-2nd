import 'package:challenge/constants/sizes.dart';
import 'package:challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadNavTab extends StatelessWidget {
  const ThreadNavTab({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final bool isSelected;
  final IconData icon;
  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: AnimatedOpacity(
          duration: const Duration(
            milliseconds: 200,
          ),
          opacity: isSelected ? 1 : 0.5,
          child: Column(
            children: [
              FaIcon(
                icon,
                color: isSelected ? getTextColorByMode(isDark) : Colors.grey,
                size: Sizes.size20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
