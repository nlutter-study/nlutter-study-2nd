import 'package:challenge/constants/sizes.dart';
import 'package:challenge/navs/thread_screen.dart';
import 'package:challenge/navs/widgets/thread_nav_tab.dart';
import 'package:challenge/router.dart';
import 'package:challenge/screens/thread_activity_screen.dart';
import 'package:challenge/screens/thread_home_screen.dart';
import 'package:challenge/screens/thread_post_screen.dart';
import 'package:challenge/screens/thread_profile_screen.dart';
import 'package:challenge/screens/thread_search_screen.dart';
import 'package:challenge/widgets/bottom_sheet/thread_new_post_botton_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

const threadLogoUrl =
    "https://seeklogo.com/images/T/threads-logo-E9BA734BF6-seeklogo.com.png?v=638252100960000000";

class ThreadMainNav extends StatefulWidget {
  final MainNavTab currentTab;
  const ThreadMainNav({
    super.key,
    this.currentTab = MainNavTab.home,
  });

  @override
  State<ThreadMainNav> createState() => _MainNavState();
}

class _MainNavState extends State<ThreadMainNav> {
  final List<ThreadScreen> _screenList = [
    ThreadScreen(
      screen: const ThreadHomeScreen(),
      icon: FontAwesomeIcons.house,
      label: "home",
      tabRoute: MainNavTab.home,
    ),
    ThreadScreen(
      screen: const ThreadSearchScreen(),
      icon: FontAwesomeIcons.magnifyingGlass,
      label: "search",
      tabRoute: MainNavTab.search,
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
      tabRoute: MainNavTab.activity,
    ),
    ThreadScreen(
      screen: const ThreadProfileScreen(),
      icon: FontAwesomeIcons.person,
      label: "profile",
      tabRoute: MainNavTab.profile,
    ),
  ];

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

  void _setSelectedIndex(MainNavTab selectedTab) {
    context.go("/${selectedTab.name}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _getTabIndex(), // post 건너뛰기
        children: [
          for (var screen in _screenList) screen.screen,
        ],
      ),
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  int _getTabIndex() {
    return widget.currentTab.index > 1
        ? widget.currentTab.index + 1
        : widget.currentTab.index;
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
              isSelected: widget.currentTab == screen.tabRoute,
              icon: screen.icon,
              label: screen.label,
              onTap: screen.label == "post"
                  ? _onPost
                  : () => _setSelectedIndex(
                        screen.tabRoute!,
                      ),
            ),
        ],
      ),
    );
  }
}
