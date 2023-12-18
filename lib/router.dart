import 'package:go_router/go_router.dart';
import 'package:tiktok/features/activity/activity_screen.dart';
import 'package:tiktok/features/main_navigation/main_navigation2_screen.dart';
import 'package:tiktok/features/search/search_screen.dart';
import 'package:tiktok/features/settings/privacy_screen.dart';
import 'package:tiktok/features/settings/settings_screen.dart';
import 'package:tiktok/features/users/user_profile_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: MainNavigation2.routeName,
      builder: (context, state) => const MainNavigation2(),
    ),
    GoRoute(
      path: SearchScreen.routeName,
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/activity',
      builder: (context, state) => const ActivityScreen(),
    ),
    GoRoute(
      path: '/profile/:username',
      builder: (context, state) {
        final username = state.params['username']!;
        return UserProfileScreen(
          username: username,
        );
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/settings/privacy',
      builder: (context, state) => const PrivacyScreen(),
    ),
  ],
);
