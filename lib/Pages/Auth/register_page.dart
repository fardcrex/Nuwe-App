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
          height: MediaQuery.of(context).size.longestSide,
          child: Column(
            children: [
              const Spacer(flex: 5),
              const Logo(),
              const SizedBox(height: 10),
              const TextMain(),
              const Spacer(flex: 3),
              const StepPageForms(),
              const Spacer(flex: 3),
              const SocialButtons(),
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

class StepPageForms extends StatefulWidget {
  const StepPageForms({Key? key}) : super(key: key);

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
          FinalStep(onChangeStep: () => _animateToPage(1)),
          FirstStep(onChangeStep: () => _animateToPage(0)),
        ],
      ),
    );
  }

  void _animateToPage(int page) => _pageController.animateToPage(
        page,
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
}

class FirstStep extends StatelessWidget {
  final Function()? onChangeStep;
  const FirstStep({Key? key, this.onChangeStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //   mainAxisSize: MainAxisSize.min,
      //alignment: WrapAlignment.center,
      children: [
        InputNuwe(
          hintText: 'Contraseña',
          initialText: 'sadsad',
          canShowError: true,
          onChanged: (value) => {},
        ),
        InputNuwe(
          hintText: 'Repetir Contraseña',
          initialText: 'sadsad',
          canShowError: true,
          onChanged: (value) => {},
        ),
        TextNuweButton(
          maintext: '< Anterior',
          alignment: Alignment.centerLeft,
          onPress: onChangeStep,
        ),
        const SizedBox(height: 25, width: double.infinity),
        PrimaryButton(
          maintext: 'CREAR MI CUENTA',
          onPress: () {},
        ),
      ],
    );
  }
}

class FinalStep extends StatelessWidget {
  final Function()? onChangeStep;
  const FinalStep({Key? key, this.onChangeStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputNuwe(
          hintText: 'Nombre público de usuario',
          initialText: 'sadsad',
          canShowError: true,
          onChanged: (value) => {},
        ),
        InputNuwe(
          hintText: 'Nombre completo',
          initialText: 'sadsad',
          canShowError: true,
          onChanged: (value) => {},
        ),
        InputNuwe(
          hintText: 'Correo electrónico',
          initialText: 'sadsad',
          canShowError: true,
          onChanged: (value) => {},
        ),
        const SizedBox(height: 20, width: double.infinity),
        PrimaryButton(
          maintext: 'SIGUIENTE',
          onPress: onChangeStep,
        ),
      ],
    );
  }
}
