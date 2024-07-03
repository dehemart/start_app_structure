import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:start_app_structure/app/constants/routes_constants.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Denis Martins',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'martins.denis@email.com',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: Text('DM'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('home'),
            onTap: () {
              context.go(RoutesConstants.homeRoutePath);
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('settings'),
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
