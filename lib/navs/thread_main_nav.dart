import 'package:challenge/constants/sizes.dart';
import 'package:challenge/navs/thread_screen.dart';
import 'package:challenge/navs/widgets/thread_nav_tab.dart';
import 'package:challenge/screens/thread_activity_screen.dart';
import 'package:challenge/screens/thread_home_screen.dart';
import 'package:challenge/screens/thread_post_screen.dart';
import 'package:challenge/screens/thread_profile_screen.dart';
import 'package:challenge/screens/thread_search_screen.dart';
import 'package:challenge/widgets/bottom_sheet/thread_new_post_botton_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const threadLogoUrl =
    "https://seeklogo.com/images/T/threads-logo-E9BA734BF6-seeklogo.com.png?v=638252100960000000";

class ThreadMainNav extends StatefulWidget {
  const ThreadMainNav({super.key});

  @override
  State<ThreadMainNav> createState() => _MainNavState();
}

class _MainNavState extends State<ThreadMainNav> {
  final List<ThreadScreen> _screenList = [
    ThreadScreen(
      screen: const ThreadHomeScreen(),
      icon: FontAwesomeIcons.house,
      label: "home",
    ),
    ThreadScreen(
      screen: const ThreadSearchScreen(),
      icon: FontAwesomeIcons.magnifyingGlass,
      label: "search",
    ),
    ThreadScreen(
      screen: const ThreadPostScreen(), // TODO : remove
      icon: FontAwesomeIcons.penToSquare,
      label: "post",
    ),
    ThreadScreen(
      screen: const ThreadActivityScreen(),
      icon: FontAwesomeIcons.heart,
      label: "activity",
    ),
    ThreadScreen(
      screen: const ThreadProfileScreen(),
      icon: FontAwesomeIcons.person,
      label: "profile",
    ),
  ];
  int _selectedIndex = 0;

  void _onPost() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      builder: (context) => const ThreadNewPostBottomSheet(),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  void _setSelectedIndex(int selectedIndex) {
    setState(() {
      _selectedIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          for (var screen in _screenList) screen.screen,
        ],
      ),
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
      height: Sizes.size52,
      padding: const EdgeInsets.only(
        top: Sizes.size14,
        right: Sizes.size6,
        left: Sizes.size6,
      ),
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var screen in _screenList)
            ThreadNavTab(
              isSelected: _selectedIndex == _screenList.indexOf(screen),
              icon: screen.icon,
              label: screen.label,
              onTap: screen.label == "post"
                  ? _onPost
                  : () => _setSelectedIndex(
                        _screenList.indexOf(screen),
                      ),
            ),
        ],
      ),
    );
  }
}
