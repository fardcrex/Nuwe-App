import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Pages/Auth/container/show_snackbar.dart';
import 'package:nuwe/Pages/Auth/widgets/buttons.dart';
import 'package:nuwe/Redux/User/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/style.dart';
import 'package:redux/redux.dart';

class VerifiedEmailBottom extends StatelessWidget {
  const VerifiedEmailBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Store<AppState>>(
      converter: (store) => store,
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.state.authState.userFailureOrSuccessOption.fold(
          () => {},
          (failureOrSuccess) => failureOrSuccess.fold(
              (l) => l.when(
                    error: (_) => showSnackBar('Hubo un error', context, icon: Icons.error),
                    emailNotVerified: () => showSnackBar('Falta verificar su correo', context,
                        icon: Icons.email, color: Colors.orange[800]),
                    emailNotSend: () =>
                        showSnackBar('No se pudo enviar el correo', context, icon: Icons.error),
                  ),
              (r) => r.when(
                    empty: () => {},
                    emailSended: () => showSnackBar(
                      'Correo de verificación enviado',
                      context,
                      icon: Icons.email,
                      color: Theme.of(context).primaryColor,
                    ),
                  )),
        );
      },
      builder: (context, store) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return PrimaryButton(
          maintext: 'VAMOS A NUWE',
          isSubmitting: store.state.authState.isSubmitting,
          onPress: () => store.dispatch(const VerifyEmailAction()),
        );
      },
    );
  }
}

class AlertDialogContainer extends StatelessWidget {
  const AlertDialogContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Store<AppState>>(
      converter: (store) => store,
      builder: (context, store) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return AlertDialog(
          backgroundColor: const Color(0xFF2E353F),
          title: title,
          content: content,
          actions: [
            ElevatedButton(
              onPressed: () => {
                store.dispatch(const SendVerifyEmailAction()),
                Navigator.pop(context),
              },
              child: const Text('ENVIAR'),
            ),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCELAR'),
            )
          ],
        );
      },
    );
  }

  Widget get title => const Text(
        'Reenviar correo de verificación',
        style: TextStyle(fontSize: 18, height: 1.5),
        textAlign: TextAlign.center,
      );

  Widget get content => const Text(
        'Puede que el correo esté en el buzón de correos no deseados.',
        style: TextStyle(
          fontFamily: FontNuweFamily.montserratRegular,
          color: Color(0xFFB5B5B5),
        ),
      );
}
