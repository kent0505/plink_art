import 'package:go_router/go_router.dart';

import '../../features/home/pages/game_page.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/home/pages/onboard_page.dart';
import '../../features/home/pages/privacy_page.dart';
import '../../features/home/pages/splash_page.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/onboard',
      builder: (context, state) => const OnboardPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/privacy',
      builder: (context, state) => const PrivacyPage(),
    ),
    GoRoute(
      path: '/game',
      builder: (context, state) => GamePage(
        id: state.extra as int,
      ),
    ),
  ],
);
