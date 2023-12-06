import 'package:day22/pages/widgets/index.dart';
import 'package:flutter/material.dart';

class ProfileWithAddIcon extends StatelessWidget {
  final double size;
  final String profileImagePath;
  const ProfileWithAddIcon(
      {super.key, required this.size, required this.profileImagePath});

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
              color: Colors.black,
              height: size / 2 - 4,
              width: size / 2 - 4,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: size / 2 - 8,
          ),
        ),
      ],
    );
  }
}
