import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:start_app_structure/app/constants/routes_constants.dart';

class SideMenuApp extends StatefulWidget {
  const SideMenuApp({super.key});

  @override
  State<SideMenuApp> createState() => _SideMenuAppState();
}

class _SideMenuAppState extends State<SideMenuApp> {
  var isMenuOpened = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: isMenuOpened ? 200 : 70,
          child: Container(
            color: Colors.blueAccent,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: isMenuOpened ? 40 : 20,
                    child: const Text('DM'),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: Text(isMenuOpened ? 'home' : ''),
                  onTap: () {
                    context.go(RoutesConstants.homeRoutePath);
                    context.pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: Text(isMenuOpened ? 'settings' : ''),
                  onTap: () {
                    context.go(RoutesConstants.settingsRoutePath);
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, -0.9),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: IconButton(
              icon: Icon(
                isMenuOpened ? Icons.keyboard_double_arrow_left : Icons.keyboard_double_arrow_right,
                size: 20,
              ),
              onPressed: () {
                setState(() {
                  isMenuOpened = !isMenuOpened;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
