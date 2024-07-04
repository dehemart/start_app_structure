import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:start_app_structure/app/constants/routes_constants.dart';

class MenuDrawerApp extends StatefulWidget {
  const MenuDrawerApp({super.key});

  @override
  State<MenuDrawerApp> createState() => _MenuAppState();
}

class _MenuAppState extends State<MenuDrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: ListTile(
              title: Text('header menu'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(RoutesConstants.homeRouteName),
            onTap: () {
              context.go(RoutesConstants.homeRoutePath);
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(RoutesConstants.settingsRouteName),
            onTap: () {
              context.go(RoutesConstants.settingsRoutePath);
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
