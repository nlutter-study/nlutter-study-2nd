import 'package:flutter/material.dart';

class DoubleProfileImages extends StatelessWidget {
  final List<String> imagePaths;
  final double imageSize;

  const DoubleProfileImages(this.imagePaths,
      {super.key, this.imageSize = 100.0});

  @override
  Widget build(BuildContext context) {
    final imageRadius = imageSize / 2 * 0.7;
    return Container(
      height: imageSize,
      alignment: Alignment.centerLeft,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          CircleAvatar(
            radius: imageRadius,
            backgroundImage: AssetImage(imagePaths[0]),
          ),
          Positioned(
            left: imageRadius,
            top: -3,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: imageRadius,
                backgroundImage: AssetImage(imagePaths[1]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
