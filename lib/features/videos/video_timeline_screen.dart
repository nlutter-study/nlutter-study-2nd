import 'package:flutter/material.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;

  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  void _onPageChanged(int page) {
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      colors.addAll([
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow,
      ]);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      onPageChanged: _onPageChanged,
      itemBuilder: (context, index) => Container(
          color: colors[index],
          child: Center(
            child: Text(
              "Screen $index",
            ),
          )),
    );
  }
}
