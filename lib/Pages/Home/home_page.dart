import 'package:flutter/material.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:nuwe/Settings/router.dart';

class HomePage extends StatelessWidget {
  final UserData userData;
  const HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(userData.toString()),
            ElevatedButton(
              onPressed: () => goToTheLogoutPage(context),
              child: const Text('Salirse'),
            ),
          ],
        ),
      ),
    );
  }

  static void goToTheLogoutPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.initial);
  }
}
