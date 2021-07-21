import 'package:flutter/material.dart';

import 'Pages/Auth/init_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF569B51),
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: const InitPage(),
    );
  }
}
