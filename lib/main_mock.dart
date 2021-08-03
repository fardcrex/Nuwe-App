import 'package:flutter/material.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/router.dart';

import 'package:redux_epics/redux_epics.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'Features/Auth/Application/Login/login.dart';
import 'Features/Auth/Application/Login/login_with_google.dart';
import 'Features/Auth/Application/Register/register.dart';
import 'Features/Auth/Application/Register/register_with_google.dart';
import 'Features/Auth/Application/signout.dart';
import 'Features/Auth/Infraestructure/mock_auth_repository.dart';
import 'Features/User/Application/create_information.dart';
import 'Features/User/Application/verified_email.dart';
import 'Features/User/Infrastructure/mock_email_repository.dart';
import 'Features/User/Infrastructure/mock_user_repository.dart';
import 'Redux/Auth/middleware.dart';
import 'Redux/User/middleware.dart';
import 'Redux/epics_middlewares.dart';
import 'Redux/reducer.dart';
import 'Settings/style.dart';

void main() {
  final authRepository = FakeAuthRepository();
  final userRepository = MockUserRepository();
  final emailRepository = MockEmailRepository();
  final authSocialRepository = FakeSocialRepository();
  runApp(MyApp(
    store: Store<AppState>(
      appReducer,
      initialState: AppState.initial(),
      middleware: [
        ...createAuthMiddlewares(
          loginWithGoogle: LoginWithGoogle(authSocialRepository),
          signOutApp: SignOut(authRepository, authSocialRepository),
          loginWithCredentials: LoginWithCredentials(authRepository),
          registerWithGoogle: RegisterWithGoogle(authSocialRepository),
          registerWithCredentials: RegisterWithCredentials(authRepository),
        ),
        ...createUserMiddlewares(
          verifyEmail: VerifyEmail(emailRepository),
          sendVerifyEmail: SendVerifyEmail(emailRepository),
          createUserInformation: CreateUserInformation(userRepository),
        ),
        EpicMiddleware(getEpicsMiddleware(userRepository: userRepository))
      ],
    ),
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({Key? key, required this.store}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Nuwe',
        initialRoute: AuthRoutes.initial,
        routes: getRoutesDinamoApp(),
        theme: NuweThemeData.theme,
        darkTheme: NuweThemeData.darkTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
