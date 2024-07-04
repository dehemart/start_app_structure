import 'package:flutter/material.dart';
import 'package:start_app_structure/app/constants/app_constants.dart';
import 'package:start_app_structure/app/pages/layout/widgets/menu/side_menu_app.dart';

class LayoutApp extends StatelessWidget {
  final Widget child;
  const LayoutApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.appTitle),
        ),
        body: Row(
          children: [
            const SideMenuApp(),
            Expanded(
              child: child,
            ),
          ],
        ));
  }
}
