import 'package:flutter/material.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/router.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'Features/Auth/Application/Login/login.dart';
import 'Features/Auth/Application/register.dart';
import 'Redux/Auth/middleware.dart';
import 'Redux/reducer.dart';

void main() {
  runApp(MyApp(
    store: Store<AppState>(
      appReducer,
      initialState: AppState.initial(),
      middleware: [
        ...createAuthMiddlewares(
          loginWithCredentials: LoginWithCredentials(),
          registerWithCredentials: RegisterWithCredentials(),
        )
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
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xFF569B51),
          errorColor: const Color(0xFFe84545),
          canvasColor: const Color(0xFF8E8E8E).withOpacity(0.4),

          /* light theme settings */
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF569B51),
          canvasColor: const Color(0xFF8E8E8E).withOpacity(0.4),
          errorColor: const Color(0xFFd32f2f),
          /* dark theme settings */
        ),
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
