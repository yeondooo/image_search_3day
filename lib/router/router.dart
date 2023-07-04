import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_3day/ui/detail/detail_screen.dart';
import 'package:image_search_3day/ui/main/main_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'detail',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailScreen();
          },
        ),
      ],
    ),
  ],
);
