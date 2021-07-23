import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Settings/router.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 4),
            const Logo(),
            const SizedBox(height: 20),
            const TextMain(),
            const Spacer(flex: 4),
            PrimaryButton(
              maintext: 'INICIAR SESIÓN',
              onPress: () => goToTheLoginPage(context),
            ),
            const SizedBox(height: 20),
            SecundaryButton(
              maintext: 'CREAR CUENTA',
              onPress: () => goToTheRegisterPage(context),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }

  static void goToTheLoginPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.login);
  }

  static void goToTheRegisterPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.register);
  }
}
