import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infai_demo_web/modules/main_home_page/main_home_page.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MainHomePage();
        },
      ),
    ],
  );
  static GoRouter get router => _router;
}
