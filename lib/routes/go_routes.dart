import 'package:flutter_application_1/views/alphabets_screen.dart';
import 'package:go_router/go_router.dart';

import '../views/home_screen.dart';
import 'app_pages.dart';

class AppRoutes {
  static GoRouter routes = GoRouter(
    initialLocation: AppPages.home,
    routes: [
      GoRoute(
        path: AppPages.home,
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppPages.alphabets,
        name: 'alphabets',
        builder: (context, state) => AlphabetsScreen(
          extras: state.extra as Map<String, dynamic>?,
        ),
      ),
    ],
  );
}
