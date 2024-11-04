import 'package:flutter/material.dart';
import 'package:testflutter/common/app_router.dart';
import 'package:testflutter/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: AppRouter.onGenerateRoute,
      title: "flutter demo",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
