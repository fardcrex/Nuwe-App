import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Application/Login/login.dart';
import 'package:nuwe/Features/Auth/Application/register.dart';
import 'package:nuwe/Redux/User/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';

import 'package:redux/redux.dart';
import '../app_state.dart';
import 'actions.dart';
import 'auth_state/auth_state.dart';

List<Middleware<AppState>> createAuthMiddlewares({
  required LoginWithCredentials loginWithCredentials,
  required RegisterWithCredentials registerWithCredentials,
}) {
  final loginEmailAndPasswordMiddleware = getLoginMiddleware(loginWithCredentials);
  final registerWithCredentialsMiddleware = getRegisterMiddleware(registerWithCredentials);
  return [
    TypedMiddleware<AppState, SignInWithCredentialsAction>(loginEmailAndPasswordMiddleware),
    TypedMiddleware<AppState, SignUpWithCredentialsAction>(registerWithCredentialsMiddleware),
  ];
}

MiddlewareAct<AppState, SignInWithCredentialsAction> getLoginMiddleware(LoginWithCredentials login) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    )));

    final loginWithCredentials = await login(
      nicknameOrEmailStr: store.state.authState.nicknameOrEmailLoging,
      passwordStr: store.state.authState.passwordLogin,
    );

    if (loginWithCredentials.isRight()) {
      return next(UpdateAuthStateAction(AuthState.initial().copyWith(
        authFailureOrSuccessOption: optionOf(loginWithCredentials),
      )));
    }

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: false,
      showErrorMessageLogin: true,
      authFailureOrSuccessOption: optionOf(loginWithCredentials),
    )));
  };
}

MiddlewareAct<AppState, SignUpWithCredentialsAction> getRegisterMiddleware(RegisterWithCredentials register) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    )));

    final loginWithCredentials = await register(
      emailStr: store.state.authState.emailAddressRegister,
      namePersonStr: store.state.authState.namePerson,
      nicknameStr: store.state.authState.nickname,
      passwordConfirmStr: store.state.authState.passwordConfirm,
      passwordStr: store.state.authState.passwordRegister,
    );

    if (loginWithCredentials.isRight()) {
      next(const UpdateUserStateAction(UserState.emailNotVerified()));
      return next(UpdateAuthStateAction(AuthState.initial().copyWith(
        authFailureOrSuccessOption: optionOf(loginWithCredentials),
      )));
    }

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: false,
      showErrorMessageRegisterFinalStep: true,
      authFailureOrSuccessOption: optionOf(loginWithCredentials),
    )));
  };
}
