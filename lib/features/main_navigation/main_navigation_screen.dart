import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text(
        "홈",
        style: TextStyle(
          fontSize: 49,
        ),
      ),
    ),
    const Center(
      child: Text(
        "검색",
        style: TextStyle(
          fontSize: 49,
        ),
      ),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(
            Sizes.size12,
          ),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                  ),
                  Gaps.v5,
                  Text(
                    'home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                  ),
                  Gaps.v5,
                  Text(
                    'home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                  ),
                  Gaps.v5,
                  Text(
                    'home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                  ),
                  Gaps.v5,
                  Text(
                    'home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
