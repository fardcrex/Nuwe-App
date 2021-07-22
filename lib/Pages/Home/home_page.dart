import 'package:flutter/material.dart';
import 'package:nuwe/Settings/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => goToTheLogoutPage(context),
          child: const Text('Salirse'),
        ),
      ),
    );
  }

  static void goToTheLogoutPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.initial);
  }
}
