import 'package:flutter/material.dart';
import 'package:start_app_structure/app/constants/app_constants.dart';

class LayoutApp extends StatefulWidget {
  final Widget child;
  const LayoutApp({super.key, required this.child});

  @override
  State<LayoutApp> createState() => _LayoutAppState();
}

class _LayoutAppState extends State<LayoutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appTitle),
      ),
      body: widget.child,
    );
  }
}
