import 'package:flutter_application_1/src/features/home_main/presentation/home_screen.dart';
import 'package:flutter_application_1/src/features/video_player/presentation/video_player.dart';
import 'package:flutter_application_1/src/routing/scaffold_with_navbar.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // The UI Shell
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/',
              name: 'home',
              builder: (context, state) {
                return const HomeScreen();
              },
              routes: [
                GoRoute(
                    path: 'video_player',
                    name: 'video_player',
                    builder: (context, state) {
                      return const VideoPlayerScreen();
                    }),
              ],
            )
          ]),
        ],
      )
    ],
  );
}
