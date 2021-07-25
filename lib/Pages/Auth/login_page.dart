import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/footer.dart';
import 'package:nuwe/Pages/Auth/widgets/input_text.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Settings/router.dart';

import 'container/input_container.dart';
import 'container/social_container.dart';

class LoginPage extends StatelessWidget {
  final void Function(String) onChangePassword;
  final void Function(String) onChangeNickOrEmail;
  final void Function() logigWithCredentials;
  final bool isSubmitting;
  const LoginPage({
    Key? key,
    required this.onChangePassword,
    required this.onChangeNickOrEmail,
    required this.logigWithCredentials,
    required this.isSubmitting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        // reverse: true,
        child: SizedBox(
          height: min(900, MediaQuery.of(context).size.longestSide),
          child: SafeArea(
            child: Column(
              children: [
                if (isSubmitting) LinearProgressIndicator(color: Theme.of(context).primaryColor),
                const Spacer(flex: 8),
                const Logo(),
                const SizedBox(height: 10),
                const TextMain(),
                const Spacer(flex: 6),
                InputsLogin(
                  onChangeNickOrEmail: onChangeNickOrEmail,
                  onChangePassword: onChangePassword,
                ),
                TextNuweButton(
                  maintext: '¿Has olvidado la contraseña?',
                  alignment: Alignment.centerRight,
                  onPress: () {},
                ),
                const Spacer(),
                PrimaryButton(
                  maintext: 'INICIAR SESIÓN',
                  onPress: () => {
                    logigWithCredentials(),
                    FocusScope.of(context).unfocus(),
                  },
                  isSubmitting: isSubmitting,
                ),
                const Spacer(flex: 6),
                const SocialContainer(),
                const Spacer(),
                Divider(color: Theme.of(context).primaryColor),
                Footer(
                  textFooter: 'Todavía no tienes cuenta? ',
                  textLink: ' Regístrate',
                  onPress: () => goToTheRegisterPage(context),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void goToTheRegisterPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.register);
  }
}

class InputsLogin extends StatelessWidget {
  final void Function(String) onChangePassword;
  final void Function(String) onChangeNickOrEmail;
  const InputsLogin({Key? key, required this.onChangePassword, required this.onChangeNickOrEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputContainer(builder: (context, authState) {
      return Column(
        children: [
          InputNuwe(
            hintText: 'Usuario o correo',
            initialText: authState.nicknameOrEmailLoging.trim(),
            canShowError: authState.canShowNicknameOrEmailError,
            onChanged: onChangeNickOrEmail,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          InputNuwe(
            hintText: 'Contraseña',
            initialText: '' /* authState.passwordLogin.trim() */,
            canShowError: authState.canShowPassworLoginError,
            onChanged: onChangePassword,
            isPassword: true,
          ),
        ],
      );
    });
  }
}
