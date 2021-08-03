import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Redux/User/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:nuwe/Redux/app_state.dart';

import 'Auth/verified_page.dart';
import 'Home/error_page.dart';
import 'Home/home_page.dart';
import 'Home/loding_page.dart';
import 'Initial_forms/init_form_page.dart';

class InitPageLogged extends StatelessWidget {
  const InitPageLogged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserStates>(
      onInit: (store) => store.dispatch(const InitStreamUserStateAction()),
      onDispose: (store) => store.dispatch(const CancelStreamUserStateAction()),
      converter: (store) => store.state.userState,
      builder: (context, userState) {
        return userState.map(
          (userData) => HomePage(userData: userData),
          error: (_) => const ErrorPage(),
          loading: (_) => const LoadingPage(),
          emailNotVerified: (_) => const VerifiedPage(),
          notCreateUserInformation: (_) => const InitFormPage(),
        );
      },
    );
  }
}
