import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Application/Login/login.dart';

import 'package:redux/redux.dart';
import '../app_state.dart';
import 'actions.dart';
import 'auth_modelo/auth_state.dart';

List<Middleware<AppState>> createAuthMiddlewares({
  required LoginWithCredentials loginWithCredentials,
}) {
  final loginEmailAndPassword = getLogin(loginWithCredentials);
  return [
    TypedMiddleware<AppState, SignInWithCredentialsAction>(loginEmailAndPassword),
  ];
}

MiddlewareAct<AppState, SignInWithCredentialsAction> getLogin(LoginWithCredentials login) {
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
