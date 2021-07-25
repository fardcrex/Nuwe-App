import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Application/Login/login.dart';
import 'package:nuwe/Features/Auth/Application/Login/login_with_google.dart';
import 'package:nuwe/Features/Auth/Application/Register/register.dart';
import 'package:nuwe/Features/Auth/Application/Register/register_with_google.dart';
import 'package:nuwe/Features/Auth/Application/signout.dart';
import 'package:nuwe/Redux/User/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';

import 'package:redux/redux.dart';
import '../app_state.dart';
import 'actions.dart';
import 'auth_state/auth_state.dart';

List<Middleware<AppState>> createAuthMiddlewares({
  required SignOut signOutApp,
  required LoginWithGoogle loginWithGoogle,
  required RegisterWithGoogle registerWithGoogle,
  required LoginWithCredentials loginWithCredentials,
  required RegisterWithCredentials registerWithCredentials,
}) {
  final loginEmailAndPasswordMiddleware = getLoginMiddleware(loginWithCredentials);
  final registerWithCredentialsMiddleware = getRegisterMiddleware(registerWithCredentials);
  return [
    TypedMiddleware<AppState, SignInWithCredentialsAction>(loginEmailAndPasswordMiddleware),
    TypedMiddleware<AppState, SignUpWithCredentialsAction>(registerWithCredentialsMiddleware),
    TypedMiddleware<AppState, LoginWithGoogleAction>(getLoginWithGoogleMiddleware(loginWithGoogle)),
    TypedMiddleware<AppState, RegisterWithGoogleAction>(getRegisterWithGoogleMiddleware(registerWithGoogle)),
    TypedMiddleware<AppState, SignOutAction>(getSignOutMiddleware(signOutApp)),
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

MiddlewareAct<AppState, LoginWithGoogleAction> getLoginWithGoogleMiddleware(LoginWithGoogle loginWithGoogle) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    )));

    final result = await loginWithGoogle();
    if (result.isRight()) {
      return next(UpdateAuthStateAction(AuthState.initial().copyWith(
        authFailureOrSuccessOption: optionOf(result),
      )));
    }

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(result),
    )));
  };
}

MiddlewareAct<AppState, RegisterWithGoogleAction> getRegisterWithGoogleMiddleware(
    RegisterWithGoogle registerWithGoogle) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    )));

    final result = await registerWithGoogle(store.state.authState.nicknameSocial);

    if (result.isRight()) {
      return next(UpdateAuthStateAction(AuthState.initial().copyWith(
        authFailureOrSuccessOption: optionOf(result),
      )));
    }

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: false,
      showErrorMessageisNicknameSocial: true,
      authFailureOrSuccessOption: optionOf(result),
    )));
  };
}

MiddlewareAct<AppState, SignOutAction> getSignOutMiddleware(SignOut signOutApp) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    await signOutApp();
    next(action);
  };
}
