import 'package:challenge/navs/thread_main_nav.dart';
import 'package:challenge/screens/thread_privacy_screen.dart';
import 'package:challenge/screens/thread_settings_screen.dart';
import 'package:go_router/go_router.dart';

enum MainNavTab {
  home,
  search,
  activity,
  profile,
}

class Routes {
  // route 관리 이렇게 하는게 일반적인지, subRoute는 / 관리 어떻게 하는지 궁금합니다
  static const home = "/";
  static const mainNav = "/:tab";
  static const settings = "/settings";
  static const privacy = "privacy";
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const ThreadMainNav(),
    ),
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
        var tab = MainNavTab.home;
        switch (tabString) {
          case "search":
            tab = MainNavTab.search;
          case "activity":
            tab = MainNavTab.activity;
          case "profile":
            tab = MainNavTab.profile;
        }
        return ThreadMainNav(
          currentTab: tab,
        );
      },
    ),
  ],
);
