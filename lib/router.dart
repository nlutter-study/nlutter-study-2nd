import 'package:go_router/go_router.dart';
import 'package:tiktok/features/main_navigation/main_navigation2_screen.dart';
import 'package:tiktok/features/settings/privacy_screen.dart';
import 'package:tiktok/features/settings/settings_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: "/:tab(|search|activity|profile)",
      name: MainNavigation2.routeName,
      builder: (context, state) {
        final tab = state.params['tab']!;
        return MainNavigation2(
          tab: tab,
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
