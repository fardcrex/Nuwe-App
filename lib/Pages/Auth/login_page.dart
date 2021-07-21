import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/footer.dart';
import 'package:nuwe/Pages/Auth/widgets/input_text.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/social_buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Settings/router.dart';

class LoginPage extends StatelessWidget {
  static const primaryColor = Color(0xFF569B51);
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232730),
      body: SingleChildScrollView(
        //  reverse: true,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const Spacer(flex: 6),
              const Logo(),
              const SizedBox(height: 10),
              const TextMain(),
              const Spacer(flex: 3),
              const InputNuwe(hintText: 'Usuario o correo'),
              const InputNuwe(hintText: 'Contraseña'),
              const TextNuweButton(
                maintext: '¿Has olvidado la contraseña?',
                alignment: Alignment.centerRight,
              ),
              const Spacer(flex: 2),
              const PrimaryButton(maintext: 'INICIAR SESIÓN'),
              const Spacer(flex: 4),
              const SocialButtons(),
              const Spacer(),
              Divider(color: Theme.of(context).primaryColor),
              Footer(
                textFooter: 'Todavía no tienes cuenta?',
                textLink: 'Regístrate',
                onPress: () => goToTheRegisterPage(context),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  static void goToTheRegisterPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.register);
  }
}
