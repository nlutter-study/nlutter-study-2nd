import 'package:challenge/constants/sizes.dart';
import 'package:challenge/navs/thread_main_nav.dart';
import 'package:challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  const MainLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Container(
      alignment: Alignment.center,
      height: Sizes.size96 * 2.5,
      child: Image.network(
        threadLogoUrl,
        color: getTextColorByMode(isDark),
        width: Sizes.size60,
      ),
    );
  }
}
