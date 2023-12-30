import 'package:go_router/go_router.dart';
import 'package:metronolog/features/main/main_screen.dart';

final router = GoRouter(
  initialLocation: MainScreen.routeUrl,
  routes: [
    GoRoute(
      path: MainScreen.routeUrl,
      name: MainScreen.routeName,
      builder: (context, state) {
        return const MainScreen();
      },
    ),
  ],
);
