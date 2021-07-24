import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'container/verified_email_container.dart';
import 'widgets/text_main.dart';
import 'widgets/text_verified.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 4),
            const Logo(),
            const SizedBox(height: 10),
            const TextMain(),
            const Spacer(flex: 3),
            const TextVerified(),
            TextNuweButton(
              maintext: 'No me llegó el correo.',
              alignment: Alignment.centerRight,
              onPress: () => openDialogConfirm(context),
            ),
            const Spacer(flex: 3),
            const VerifiedEmailBottom(),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }

  static Future<bool> openDialogConfirm(
    BuildContext context,
  ) async {
    final isAccept = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return const AlertDialogContainer();
      },
    );

    return isAccept ?? false;
  }
}
