import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';

void showSnackbarAuth(AuthFailure authFailure, BuildContext context) {
  authFailure.when(
      cancelledByUser: () => showSnackBar('Cancelado', context, icon: Icons.email),
      serverError: () => showSnackBar('Error en el servidor', context, icon: Icons.email),
      internalError: () => showSnackBar('Error interno', context, icon: Icons.email),
      emailAlreadyInUse: () => showSnackBar('El email ya está en uso', context, icon: Icons.email),
      emailNotExist: () => showSnackBar('Email inexistente', context, icon: Icons.email),
      accountDisabled: () => showSnackBar('Cuannta bloqueada', context, icon: Icons.email),
      invalidEmailAndPasswordCombination: () =>
          showSnackBar('Combinación de datos inválidos', context, icon: Icons.email),
      invalidEmail: (failure) => showSnackBar('Su usuario o correo es inválido.', context, icon: Icons.email),
      invalidPassword: (failure) => failure.when(
          characterLimitExceeded: (_) =>
              showSnackBar('La contraseña superó el límite de carácteres', context, icon: Icons.lock),
          shortCharacters: (_) => showSnackBar('Constraseña corta', context, icon: Icons.lock),
          emptyValue: (_) => showSnackBar('Ingrese una contraseña', context, icon: Icons.lock),
          invalidFormat: (_) => showSnackBar('Contraseña inválida', context, icon: Icons.lock)),
      invalidAnyCredentials: () => showSnackBar('Datos inválidos', context, icon: Icons.error));
}

void showSnackBar(String message, BuildContext context, {required IconData icon}) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 2),
    builder: (context, controller) {
      return Flash.bar(
        controller: controller,
        position: FlashPosition.top,
        backgroundColor: Theme.of(context).errorColor,
        horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
        margin: const EdgeInsets.all(8),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        forwardAnimationCurve: Curves.easeOutBack,
        reverseAnimationCurve: Curves.slowMiddle,
        child: FlashBar(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          content: Text(message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              )),
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(icon, color: Colors.white, size: 35),
          ),
          shouldIconPulse: false,
        ),
      );
    },
  );
}
