import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Settings/router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 3),
            const Icon(Icons.error, size: 120),
            const Spacer(),
            const Text('Hubo un problema con su Usuario'),
            const Spacer(flex: 3),
            PrimaryButton(
              maintext: 'Regresar',
              onPress: () => goToTheLogoutPage(context),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }

  static void goToTheLogoutPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.initial);
  }
}
