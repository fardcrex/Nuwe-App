import 'package:flutter/material.dart';
import 'package:flash/flash.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Redux/Auth/auth_state/auth_state.dart';

void showSnackbarAuth(AuthFailure authFailure, BuildContext context) {
  authFailure.when(
      diferentPasswords: () => showSnackBar('Las contraseñas no coinciden', context, icon: Icons.lock),
      cancelledByUser: () => showSnackBar('Cancelado', context, icon: Icons.email),
      serverError: () => showSnackBar('Error en el servidor', context, icon: Icons.email),
      internalError: () => showSnackBar('Error interno', context, icon: Icons.email),
      nicknameAlreadyInUse: () =>
          showSnackBar('El nombre público ya está en uso', context, icon: Icons.error),
      emailAlreadyInUse: () => showSnackBar('El correo ya está en uso', context, icon: Icons.email),
      emailNotExist: () => showSnackBar('Email inexistente', context, icon: Icons.email),
      accountDisabled: () => showSnackBar('Cuannta bloqueada', context, icon: Icons.email),
      invalidEmailAndPasswordCombination: () =>
          showSnackBar('Combinación de datos inválidos', context, icon: Icons.error),
      invalidEmailOrNickname: (failure) =>
          showSnackBar('Su usuario o correo es inválido.', context, icon: Icons.error),
      invalidEmail: (failure) => failure.maybeWhen(
            orElse: () => showSnackBar('Correo inválido', context, icon: Icons.email),
            emptyValue: (_) => showSnackBar('Ingrese un correo', context, icon: Icons.email),
          ),
      invalidNamePerson: (failure) => failure.maybeWhen(
          characterLimitExceeded: (_) =>
              showSnackBar('El nombre superó el límite de carácteres', context, icon: Icons.error),
          emptyValue: (_) => showSnackBar('Ingrese un nombre', context, icon: Icons.error),
          orElse: () => showSnackBar('Nombre inválido (sólo letras).', context, icon: Icons.error)),
      invalidNickname: (failure) => failure.when(
          characterLimitExceeded: (_) =>
              showSnackBar('El nombre público superó el límite de carácteres', context, icon: Icons.error),
          shortCharacters: (_) => showSnackBar('Nombre público corto', context, icon: Icons.lock),
          emptyValue: (_) => showSnackBar('Ingrese un nombre público', context, icon: Icons.error),
          invalidFormat: (_) =>
              showSnackBar('Solo carácteres alfanuméricos y _', context, icon: Icons.error)),
      invalidPassword: (failure) => failure.when(
          characterLimitExceeded: (_) =>
              showSnackBar('La contraseña superó el límite de carácteres', context, icon: Icons.lock),
          shortCharacters: (_) => showSnackBar('Constraseña corta', context, icon: Icons.lock),
          emptyValue: (_) => showSnackBar('Ingrese una contraseña', context, icon: Icons.lock),
          invalidFormat: (_) => showSnackBar('Contraseña inválida', context, icon: Icons.lock)),
      invalidAnyCredentials: () => showSnackBar('Datos inválidos', context, icon: Icons.error));
}

AuthFailure? getAuthFailureFromFirstStep(AuthState authState) {
  return authState.nicknameValueObject.value.fold(
    (l) => AuthFailure.invalidNickname(l),
    (r) => authState.namePersonValueObject.value.fold(
      (l) => AuthFailure.invalidNamePerson(l),
      (r) => authState.emailRegisterValueObject.value.fold(
        (l) => AuthFailure.invalidEmail(l),
        (r) => null,
      ),
    ),
  );
}

void showSnackBar(String message, BuildContext context, {required IconData icon, Color? color}) {
  final backgroundColor = color ?? Theme.of(context).errorColor;
  showFlash(
    context: context,
    duration: const Duration(seconds: 6),
    builder: (context, controller) {
      return Flash.bar(
        controller: controller,
        position: FlashPosition.top,
        backgroundColor: backgroundColor,
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
