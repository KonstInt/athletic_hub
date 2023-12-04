import 'package:athletic_hub/app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerSettings = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/main',
  routes: <RouteBase>[
    GoRoute(
      name: '/main',
      path: '/main',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
  ],
);
