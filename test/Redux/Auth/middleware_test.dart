import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'dart:async';
import 'package:mockito/mockito.dart';
import 'package:nuwe/Features/Auth/Application/Login/login.dart';
import 'package:nuwe/Features/Auth/Application/Login/login_with_google.dart';
import 'package:nuwe/Features/Auth/Application/Register/register.dart';
import 'package:nuwe/Features/Auth/Application/Register/register_with_google.dart';
import 'package:nuwe/Features/Auth/Application/signout.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/Auth/middleware.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Redux/reducer.dart';
import 'package:redux/redux.dart';
import 'package:flutter/foundation.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockSocialRepository extends Mock implements IAuthSocialRepository {}

main() {
  group('Middleware', () {
    test('Should sing out with credentials', () {
      final authRepository = MockAuthRepository();
      final authSocialRepository = MockSocialRepository();

      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
        middleware: [
          ...createAuthMiddlewares(
            registerWithGoogle: RegisterWithGoogle(authSocialRepository),
            loginWithGoogle: LoginWithGoogle(authSocialRepository),
            signOutApp: SignOut(authRepository, authSocialRepository),
            loginWithCredentials: LoginWithCredentials(authRepository),
            registerWithCredentials: RegisterWithCredentials(authRepository),
          ),
        ],
      );

      when(authSocialRepository.signOut()).thenReturn(SynchronousFuture(null));
      when(authRepository.signOut()).thenReturn(SynchronousFuture(null));
      //   when(authRepository.signOut()).thenAnswer((_) => SynchronousFuture(null));

      store.dispatch(const SignOutAction());

      verify(authSocialRepository.signOut());
      verify(authRepository.signOut());
    });
  });
}
