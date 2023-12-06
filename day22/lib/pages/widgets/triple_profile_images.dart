import 'package:flutter/material.dart';

class TripleProfileImages extends StatelessWidget {
  final List<String> imagePaths;
  final double imageSize;

  const TripleProfileImages(this.imagePaths,
      {super.key, this.imageSize = 100.0});

  @override
  Widget build(BuildContext context) {
    final firstImageRadius = imageSize / 2 * 0.5;
    final secondImageRadius = imageSize / 2 * 0.4;
    final thirdImageRadius = imageSize / 2 * 0.3;

    final firstImageLeft = imageSize / 2;
    const firstImageTop = 0.0;
    const secondImageLeft = 0.0;
    final secondImageTop = imageSize / 2 * 0.5;
    final thirdImageLeft = imageSize / 2 * 0.8;
    final thirdImageTop = imageSize / 2 * 1.3;

    return SizedBox(
      width: imageSize,
      height: imageSize,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            left: firstImageLeft,
            top: firstImageTop,
            child: CircleAvatar(
              radius: firstImageRadius,
              backgroundImage: AssetImage(imagePaths[0]),
            ),
          ),
          Positioned(
            left: secondImageLeft,
            top: secondImageTop,
            child: CircleAvatar(
              radius: secondImageRadius,
              backgroundImage: AssetImage(imagePaths[1]),
            ),
          ),
          Positioned(
            left: thirdImageLeft,
            top: thirdImageTop,
            child: CircleAvatar(
              radius: thirdImageRadius,
              backgroundImage: AssetImage(imagePaths[2]),
            ),
          ),
        ],
      ),
    );
  }
}
