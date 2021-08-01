import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
import 'Features/Auth/Infraestructure/firebase_auth_repository.dart';
import 'Features/Auth/Infraestructure/firebase_auth_social_repository.dart';
import 'Features/User/Application/verified_email.dart';
import 'Features/User/Infrastructure/firebase_email_repository.dart';
import 'Features/User/Infrastructure/firebase_user_repository.dart';
import 'Redux/Auth/middleware.dart';
import 'Redux/User/middleware.dart';
import 'Redux/epics_middlewares.dart';
import 'Redux/reducer.dart';
import 'Settings/style.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //TODO: CREATE services auth
  final firebaseAuth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final googleSignIn = GoogleSignIn();
  final authRepository = FirebaseAuthRepository(firebaseAuth, firestore);
  final authSocialRepository = FirebaseAuthSocialRepository(firebaseAuth, firestore, googleSignIn);
  final emailRepository = FirebaseEmailRepository(firebaseAuth);
  runApp(MyApp(
    isLogged: firebaseAuth.currentUser != null && firebaseAuth.currentUser!.emailVerified,
    store: Store<AppState>(
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
        ...createUserMiddlewares(
          verifyEmail: VerifyEmail(emailRepository),
          sendVerifyEmail: SendVerifyEmail(emailRepository),
        ),
        EpicMiddleware(getEpicsMiddleware(userRepository: FirebaseUserRepository(firestore, firebaseAuth)))
      ],
    ),
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  final bool isLogged;

  const MyApp({Key? key, required this.store, required this.isLogged}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Nuwe',
        debugShowCheckedModeBanner: false,
        initialRoute: isLogged ? HomeRoutes.dashboard : AuthRoutes.initial,
        routes: getRoutesDinamoApp(),
        theme: NuweThemeData.theme,
        darkTheme: NuweThemeData.darkTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
