import 'package:flutter/material.dart';
import 'package:start_app_structure/app/constants/app_constants.dart';
import 'package:start_app_structure/app/routes/route_app.dart';
import 'package:start_app_structure/app/themes/theme_app.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appTitle,
      themeMode: ThemeMode.dark,
      theme: ThemeApp.lightThemeData,
      darkTheme: ThemeApp.darkThemeData,
      routerConfig: RouteApp.router,
    );
  }
}
