import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/footer.dart';
import 'package:nuwe/Pages/Auth/widgets/input_text.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/social_buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Settings/router.dart';

class RegisterPage extends StatelessWidget {
  static const primaryColor = Color(0xFF569B51);
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232730),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const Spacer(flex: 5),
              const Logo(),
              const SizedBox(height: 10),
              const TextMain(),
              const Spacer(flex: 3),
              /*     const InputNuwe(hintText: 'Nombre público de usuario'),
              const InputNuwe(hintText: 'Nombre completo'),
              const InputNuwe(hintText: 'Correo electrónico'), */
              const InputNuwe(hintText: 'Contraseña'),
              const InputNuwe(hintText: 'Repetir Contraseña'),
              const TextNuweButton(
                maintext: '< Anterior',
                alignment: Alignment.centerLeft,
              ),

              const Spacer(flex: 2),
              //    const PrimaryButton(maintext: 'SIGUIENTE'),
              const PrimaryButton(maintext: 'CREAR MI CUENTA'),
              const Spacer(flex: 3),
              const SocialButtons(),
              const Spacer(),
              Divider(color: Theme.of(context).primaryColor),
              Footer(
                textFooter: '¿Ya tienes cuenta?',
                textLink: 'Inicia sesión',
                onPress: () => goToTheLoginPage(context),
              ),
              const SizedBox(height: 15),
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
