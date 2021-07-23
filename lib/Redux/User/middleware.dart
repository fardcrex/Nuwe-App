import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Application/verified_email.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:redux/redux.dart';

import '../app_state.dart';
import 'actions.dart';

List<Middleware<AppState>> createUserMiddlewares({
  required VerifyEmail verifyEmail,
  required SendVerifyEmail sendVerifyEmail,
}) {
  final verifyEmailMiddleware = getVerifyEmailMiddleware(verifyEmail);
  final sendVerifyEmailMiddleware = getSendVerifyEmailMiddleware(sendVerifyEmail);
  return [
    TypedMiddleware<AppState, VerifyEmailAction>(verifyEmailMiddleware),
    TypedMiddleware<AppState, SendVerifyEmailAction>(sendVerifyEmailMiddleware),
  ];
}

MiddlewareAct<AppState, VerifyEmailAction> getVerifyEmailMiddleware(VerifyEmail verifyEmail) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: true,
      userFailureOrSuccessOption: none(),
    )));

    final result = await verifyEmail();

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: false,
      userFailureOrSuccessOption: optionOf(result),
    )));
  };
}

MiddlewareAct<AppState, SendVerifyEmailAction> getSendVerifyEmailMiddleware(SendVerifyEmail sendVerifyEmail) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(UpdateAuthStateAction(store.state.authState.copyWith(
      userFailureOrSuccessOption: none(),
    )));

    final result = await sendVerifyEmail();

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      userFailureOrSuccessOption: optionOf(result),
    )));
  };
}
