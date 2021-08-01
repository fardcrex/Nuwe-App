import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/footer.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Settings/router.dart';

import 'container/register_container.dart';
import 'container/social_container.dart';

class RegisterPage extends StatelessWidget {
  static const primaryColor = Color(0xFF569B51);
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          height: MediaQuery.of(context).size.longestSide,
          child: Column(
            children: [
              const Spacer(flex: 5),
              const Logo(),
              const SizedBox(height: 10),
              const TextMain(),
              const Spacer(flex: 3),
              const ContainerRegisterPage(),
              const Spacer(flex: 3),
              const SocialContainer(isFromRegisterPage: true),
              const Spacer(),
              Divider(color: Theme.of(context).primaryColor),
              Footer(
                textFooter: '¿Ya tienes cuenta?',
                textLink: 'Inicia sesión',
                onPress: () => goToTheLoginPage(context),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  static void goToTheLoginPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.login);
  }
}
