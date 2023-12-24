import 'package:challenge/authentications/view/login_screen.dart';
import 'package:challenge/authentications/view/sign_up_screen.dart';
import 'package:challenge/authentications/view_models/auth_vm.dart';
import 'package:challenge/navs/thread_main_nav.dart';
import 'package:challenge/screens/thread_privacy_screen.dart';
import 'package:challenge/screens/thread_settings_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  static const login = "/login";
  static const signUp = "/sign-up";
  static const settings = "/settings";
  static const privacy = "privacy";
}

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: "/home",
    redirect: (context, state) {
      final isLoggedIn = ref.read(authProvider).isLoggedIn;
      if (!isLoggedIn) {
        if (state.matchedLocation != Routes.signUp &&
            state.matchedLocation != Routes.login) {
          return Routes.login;
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const ThreadMainNav(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => const SignUpScreen(),
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
  ),
);
