import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:start_app_structure/app/constants/routes_constants.dart';
import 'package:start_app_structure/app/pages/home/home_page.dart';
import 'package:start_app_structure/app/pages/layout/layout_app.dart';
import 'package:start_app_structure/app/pages/settings/settings_page.dart';

class RouteApp {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter get router => GoRouter(
        initialLocation: RoutesConstants.homeRoutePath,
        navigatorKey: _rootNavigatorKey,
        routes: [
          ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return LayoutApp(child: child);
            },
            routes: [
              GoRoute(
                path: RoutesConstants.homeRoutePath,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
        ],
      );
}
