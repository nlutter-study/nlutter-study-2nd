import 'package:go_router/go_router.dart';
import 'package:metronolog/features/main/main_screen.dart';
import 'package:metronolog/features/metronome/metronome_screen.dart';
import 'package:metronolog/features/note/note_screen.dart';
import 'package:metronolog/features/timeline/timeline_screen.dart';

final router = GoRouter(
  initialLocation: MetronomeScreen.routeUrl,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: NoteScreen.routeUrl,
              name: NoteScreen.routeName,
              builder: (context, state) {
                return const NoteScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: MetronomeScreen.routeUrl,
              name: MetronomeScreen.routeName,
              builder: (context, state) {
                return const MetronomeScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: TimelineScreen.routeUrl,
              name: TimelineScreen.routeName,
              builder: (context, state) {
                return const TimelineScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
