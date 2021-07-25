import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/input_text.dart';
import 'package:nuwe/Settings/router.dart';

import 'container/input_container.dart';

class RegisterSocialPage extends StatelessWidget {
  final void Function(String) onChangeNickname;
  final void Function()? registerWithSocial;

  final Widget socialIcon;
  const RegisterSocialPage({
    Key? key,
    required this.registerWithSocial,
    required this.onChangeNickname,
    required this.socialIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: min(900, MediaQuery.of(context).size.longestSide),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  //     if (isSubmitting) LinearProgressIndicator(color: Theme.of(context).primaryColor),
                  const Spacer(flex: 5),
                  socialIcon,
                  const Spacer(flex: 7),
                  InputsNickname(onChangeNickname: onChangeNickname),
                  const Spacer(flex: 2),
                  PrimaryButton(
                    maintext: 'Registrarme',
                    onPress: () => {
                      registerWithSocial?.call(),
                      FocusScope.of(context).unfocus(),
                    },
                    isSubmitting: registerWithSocial == null,
                  ),
                  const Spacer(flex: 6),
                ],
              ),
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

class InputsNickname extends StatelessWidget {
  final void Function(String) onChangeNickname;
  const InputsNickname({Key? key, required this.onChangeNickname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputContainer(builder: (context, authState) {
      return InputNuwe(
        hintText: 'Nombre público de usuario',
        initialText: authState.nickname.trim(),
        canShowError: authState.canShowNicknameError,
        onChanged: onChangeNickname,
        textInputAction: TextInputAction.next,
      );
    });
  }
}
