import 'package:flutter/material.dart';

class ProfileImageFromAsset extends StatelessWidget {
  final String imagePath;
  final double imageSize;

  const ProfileImageFromAsset(this.imagePath,
      {super.key, this.imageSize = 100.0});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: imageSize,
        height: imageSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
