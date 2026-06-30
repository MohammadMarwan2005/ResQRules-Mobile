import 'package:go_router/go_router.dart';

import '../features/home/home_screen.dart';
import '../features/session/session_screen.dart';
import '../features/splash/splash_screen.dart';

/// App routes: splash → home → session(:chartId).
final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/session/:chartId',
      builder:
          (context, state) =>
              SessionScreen(chartId: state.pathParameters['chartId']!),
    ),
  ],
);
