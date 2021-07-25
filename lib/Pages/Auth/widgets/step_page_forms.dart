import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/container/input_container.dart';
import 'package:nuwe/Pages/Auth/widgets/input_text.dart';

import 'buttons.dart';

class StepPageForms extends StatefulWidget {
  final void Function(String) onChangePassword;
  final void Function(String) onChangePasswordConfirm;
  final void Function(String) onChangeEmail;
  final void Function(String) onChangeNamePerson;
  final void Function(String) onChangeNickname;
  final void Function() registerWithCredentials;
  final void Function() goToNextStep;
  final bool isSubmitting;

  const StepPageForms(
      {Key? key,
      required this.onChangePassword,
      required this.onChangePasswordConfirm,
      required this.onChangeEmail,
      required this.onChangeNamePerson,
      required this.onChangeNickname,
      required this.registerWithCredentials,
      required this.goToNextStep,
      required this.isSubmitting})
      : super(key: key);

  @override
  _StepPageFormsState createState() => _StepPageFormsState();
}

class _StepPageFormsState extends State<StepPageForms> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: PageView(
        controller: _pageController,
        allowImplicitScrolling: true,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          if (_isFirstPage)
            FirstStep(
              onChangeStep: (isDataValid) async {
                widget.goToNextStep();
                if (isDataValid) {
                  _animateToPage(1);

                  setState(() => {_isSecondPage = true});
                  await Future.delayed(const Duration(seconds: 1));
                  setState(() => {_isFirstPage = false});
                }
              },
              onChangeNickname: widget.onChangeNickname,
              onChangeEmail: widget.onChangeEmail,
              onChangeNamePerson: widget.onChangeNamePerson,
            )
          else
            const SizedBox(),
          if (_isSecondPage)
            FinalStep(
                isSubmitting: widget.isSubmitting,
                onChangePassword: widget.onChangePassword,
                registerWithCredentials: widget.registerWithCredentials,
                onChangePasswordConfirm: widget.onChangePasswordConfirm,
                onChangeStep: () async {
                  _animateToPage(0);

                  setState(() => {_isFirstPage = true});
                  await Future.delayed(const Duration(seconds: 1));
                  setState(() => {_isSecondPage = false});
                })
          else
            const SizedBox(),
        ],
      ),
    );
  }

  bool _isFirstPage = true;
  bool _isSecondPage = false;
  void _animateToPage(int page) => _pageController.animateToPage(
        page,
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
}

class FinalStep extends StatelessWidget {
  final void Function(String) onChangePassword;
  final void Function() registerWithCredentials;
  final void Function(String) onChangePasswordConfirm;
  final Function()? onChangeStep;
  final bool isSubmitting;
  const FinalStep(
      {Key? key,
      this.onChangeStep,
      required this.onChangePassword,
      required this.onChangePasswordConfirm,
      required this.registerWithCredentials,
      required this.isSubmitting})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputContainer(builder: (context, authState) {
      return Column(
        //   mainAxisSize: MainAxisSize.min,
        //alignment: WrapAlignment.center,
        children: [
          InputNuwe(
            hintText: 'Contraseña',
            initialText: authState.passwordRegister,
            canShowError: authState.canShowPassworRegisterError,
            isPassword: true,
            onChanged: onChangePassword,
            textInputAction: TextInputAction.next,
          ),
          InputNuwe(
            hintText: 'Repetir Contraseña',
            initialText: '',
            canShowError: authState.canShowPassworConfirmError,
            isPassword: true,
            textInputAction: TextInputAction.done,
            onChanged: onChangePasswordConfirm,
          ),
          TextNuweButton(
            maintext: '< Anterior',
            alignment: Alignment.centerLeft,
            onPress: onChangeStep,
          ),
          const SizedBox(height: 25, width: double.infinity),
          PrimaryButton(
            maintext: 'CREAR MI CUENTA',
            isSubmitting: isSubmitting,
            onPress: () {
              registerWithCredentials();
              FocusScope.of(context).unfocus();
            },
          ),
        ],
      );
    });
  }
}

class FirstStep extends StatelessWidget {
  final Function(bool isDataValid) onChangeStep;
  final void Function(String) onChangeEmail;
  final void Function(String) onChangeNamePerson;
  final void Function(String) onChangeNickname;
  const FirstStep(
      {Key? key,
      required this.onChangeStep,
      required this.onChangeEmail,
      required this.onChangeNamePerson,
      required this.onChangeNickname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputContainer(builder: (context, authState) {
      return Column(
        children: [
          InputNuwe(
            key: Key(authState.nickname.trim()),
            hintText: 'Nombre público de usuario',
            initialText: authState.nickname.trim(),
            canShowError: authState.canShowNicknameError,
            onChanged: onChangeNickname,
            textInputAction: TextInputAction.next,
          ),
          InputNuwe(
            hintText: 'Nombre completo',
            initialText: authState.namePerson.trim(),
            canShowError: authState.canShowNamePersonError,
            onChanged: onChangeNamePerson,
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
          ),
          InputNuwe(
            hintText: 'Correo electrónico',
            initialText: authState.emailAddressRegister.trim(),
            keyboardType: TextInputType.emailAddress,
            canShowError: authState.canShowEmailRegisterError,
            onChanged: onChangeEmail,
          ),
          const SizedBox(height: 20, width: double.infinity),
          PrimaryButton(
            maintext: 'SIGUIENTE',
            onPress: () => onChangeStep(authState.isFirstDataStepValid),
          ),
        ],
      );
    });
  }
}
