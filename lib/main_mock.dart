import 'package:flutter/material.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/router.dart';

import 'package:redux_epics/redux_epics.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'Features/Auth/Application/Login/login.dart';
import 'Features/Auth/Application/register.dart';
import 'Features/Auth/Application/signout.dart';
import 'Features/Auth/Infraestructure/mock_auth_repository.dart';
import 'Features/User/Application/verified_email.dart';
import 'Features/User/Infrastructure/mock_email_repository.dart';
import 'Features/User/Infrastructure/mock_user_repository.dart';
import 'Redux/Auth/middleware.dart';
import 'Redux/User/middleware.dart';
import 'Redux/epics_middlewares.dart';
import 'Redux/reducer.dart';
import 'Settings/style.dart';

void main() {
  final authRepository = MockAuthRepository();
  final emailRepository = MockEmailRepository();
  runApp(MyApp(
    store: Store<AppState>(
      appReducer,
      initialState: AppState.initial(),
      middleware: [
        ...createAuthMiddlewares(
          signOutApp: SignOut(authRepository),
          loginWithCredentials: LoginWithCredentials(authRepository),
          registerWithCredentials: RegisterWithCredentials(authRepository),
        ),
        ...createUserMiddlewares(
          verifyEmail: VerifyEmail(emailRepository),
          sendVerifyEmail: SendVerifyEmail(emailRepository),
        ),
        EpicMiddleware(getEpicsMiddleware(userRepository: MockUserRepository()))
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
