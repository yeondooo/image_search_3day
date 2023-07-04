import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_3day/data/model/photo.dart';
import 'package:image_search_3day/data/repository/pixabay_photo_repository_impl.dart';
import 'package:image_search_3day/ui/detail/detail_screen.dart';
import 'package:image_search_3day/ui/main/main_screen.dart';
import 'package:image_search_3day/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(PixabayPhotoRespositoryImpl()),
          child: const MainScreen(),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'detail',
          builder: (BuildContext context, GoRouterState state) {
            final photo = state.extra as Photo;
            return DetailScreen(photo: photo);
          },
        ),
      ],
    ),
  ],
);
