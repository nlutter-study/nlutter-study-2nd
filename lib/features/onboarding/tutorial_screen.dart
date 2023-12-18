import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

enum Direction { right, left }

enum Page { first, second }

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  Direction _direction = Direction.right;
  Page _showPage = Page.first;

  void _onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dx > 0) {
      setState(() {
        _direction = Direction.right;
      });
    } else {
      setState(() {
        _direction = Direction.left;
      });
    }
  }

  void _onPanEnd(DragEndDetails details) {
    if (_direction == Direction.left) {
      setState(() {
        _showPage = Page.second;
      });
    } else {
      setState(() {
        _showPage = Page.first;
      });
    }
  }

  void _onEnterAppTap() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size24,
          ),
          child: SafeArea(
            child: AnimatedCrossFade(
              firstChild: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  Text(
                    "쿨한 영상을 시청하고\n좋아요를 눌러보세요.",
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    "영상은 당신의 관심사를 기반으로 추천됩니다.",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
              secondChild: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  Text(
                    "규칙을 지켜주세요.",
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    "당신의 안전을 위해 영상에는 다음과 같은 내용이 포함될 수 없습니다.",
                    style: TextStyle(
                      fontSize: Sizes.size20,
                    ),
                  ),
                ],
              ),
              crossFadeState: _showPage == Page.first
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(
                milliseconds: 300,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size24,
              vertical: Sizes.size48,
            ),
            child: AnimatedOpacity(
              opacity: _showPage == Page.first ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: CupertinoButton(
                onPressed: _onEnterAppTap,
                color: Theme.of(context).primaryColor,
                child: const Text("앱으로"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
