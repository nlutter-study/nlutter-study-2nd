import 'package:challenge/navs/thread_main_nav.dart';
import 'package:challenge/screens/thread_activity_screen.dart';
import 'package:challenge/screens/thread_home_screen.dart';
import 'package:challenge/screens/thread_privacy_screen.dart';
import 'package:challenge/screens/thread_profile_screen.dart';
import 'package:challenge/screens/thread_search_screen.dart';
import 'package:challenge/screens/thread_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

enum MainNavTab {
  home(
    icon: FontAwesomeIcons.house,
    screen: ThreadHomeScreen(),
  ),
  search(
    icon: FontAwesomeIcons.magnifyingGlass,
    screen: ThreadSearchScreen(),
  ),
  post(
    icon: FontAwesomeIcons.penToSquare,
  ),
  activity(
    icon: FontAwesomeIcons.heart,
    screen: ThreadActivityScreen(),
  ),
  profile(
    icon: FontAwesomeIcons.person,
    screen: ThreadProfileScreen(),
  );

  final Widget? screen;
  final IconData icon;

  const MainNavTab({this.screen, required this.icon});
}

class Routes {
  // route 관리 이렇게 하는게 일반적인지, subRoute는 / 관리 어떻게 하는지 궁금합니다
  static const mainNav = "/:tab";
  static const settings = "/settings";
  static const privacy = "privacy";
}

final router = GoRouter(
  initialLocation: "/${MainNavTab.home.name}",
  routes: [
    GoRoute(
      path: Routes.settings,
      builder: (context, state) => const ThreadSettingsScreen(),
      routes: [
        GoRoute(
          path: Routes.privacy,
          name: Routes.privacy,
          builder: (context, state) => const ThreadPrivacyScreen(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.mainNav,
      builder: (context, state) {
        final tabString = state.pathParameters["tab"];
        final tab = MainNavTab.values.firstWhere(
          (value) => value.name == tabString,
          orElse: () => MainNavTab.home,
        );
        return ThreadMainNav(
          currentTab: tab,
        );
      },
    ),
  ],
);
