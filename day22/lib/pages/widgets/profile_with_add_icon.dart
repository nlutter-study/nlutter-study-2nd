import 'package:flutter/material.dart';

import 'profile_image_from_asset.dart';

class ProfileWithIcon extends StatelessWidget {
  final double size;
  final String profileImagePath;
  final IconData iconData;
  final Color iconBackgroundColor;
  const ProfileWithIcon(
      {super.key,
      required this.size,
      required this.profileImagePath,
      required this.iconData,
      required this.iconBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileImageFromAsset(
          profileImagePath,
          imageSize: size,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: ClipOval(
            child: Container(
              color: Colors.white,
              height: size / 2,
              width: size / 2,
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: ClipOval(
            child: Container(
              color: iconBackgroundColor,
              height: size / 2 - 4,
              width: size / 2 - 4,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: Icon(
            iconData,
            color: Colors.white,
            size: size / 2 - 8,
          ),
        ),
      ],
    );
  }
}
