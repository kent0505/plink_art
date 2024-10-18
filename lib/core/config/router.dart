import 'package:go_router/go_router.dart';

import '../../features/home/pages/game_page.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/splash/splash_page.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/game',
      builder: (context, state) => GamePage(
        id: state.extra as int,
      ),
    ),
  ],
);
