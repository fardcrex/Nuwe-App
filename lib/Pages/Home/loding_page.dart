import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Settings/router.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          const Spacer(),
          const Logo(),
          const Spacer(),
          CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
          const Spacer(),
        ],
      ),
    );
  }

  static void goToTheLogoutPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AuthRoutes.initial);
  }
}
