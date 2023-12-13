import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

class VideoButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const VideoButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(icon, size: Sizes.size36, color: Colors.white.withOpacity(0.8)),
        Gaps.v5,
        Text(
          text,
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
