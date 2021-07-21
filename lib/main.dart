import 'package:flutter/material.dart';
import 'package:nuwe/Settings/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuwe',
      initialRoute: AuthRoutes.initial,
      routes: getRoutesDinamoApp(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF569B51),
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF569B51),
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
