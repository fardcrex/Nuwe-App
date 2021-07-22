import 'package:dartz/dartz.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Pages/Auth/container/show_snackbar.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/router.dart';
import 'package:redux/redux.dart';

import '../login_page.dart';

class ContainerLoginPage extends StatelessWidget {
  const ContainerLoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      onWillChange: (previousViewModel, newViewModel) {
        newViewModel.authFailureOrSuccessOption.fold(() => {}, (failureOrSuccess) {
          failureOrSuccess.fold(
            (l) => showSnackbarAuth(l, context),
            (r) => Navigator.pushReplacementNamed(context, HomeRoutes.dashboard),
          );
        });
      },
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return LoginPage(
          onChangePassword: vm.onChangePassword,
          onChangeNickOrEmail: vm.onChangeNickOrEmail,
          isSubmitting: vm.isSubmitting,
          logigWithCredentials: vm.logigWithCredentials,
        );
      },
    );
  }
}

class _ViewModel {
  final void Function(String) onChangePassword;
  final void Function(String) onChangeNickOrEmail;
  final void Function() logigWithCredentials;
  final bool isSubmitting;

  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  const _ViewModel({
    // bool isChatPageActive,
    required this.onChangePassword,
    required this.isSubmitting,
    required this.logigWithCredentials,
    required this.authFailureOrSuccessOption,
    required this.onChangeNickOrEmail,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
        isSubmitting: store.state.authState.isSubmitting,
        onChangeNickOrEmail: (value) => store.dispatch(EmailOrNicknameOnChangeAction(value)),
        onChangePassword: (value) => store.dispatch(PasswordLoginOnChangeAction(value)),
        logigWithCredentials: () => store.dispatch(const SignInWithCredentialsAction()),
        authFailureOrSuccessOption: store.state.authState.authFailureOrSuccessOption
        //    isChatPageActive: store.state.notificationState.isChatPage,
        );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          isSubmitting == other.isSubmitting &&
          authFailureOrSuccessOption == other.authFailureOrSuccessOption;
  @override
  int get hashCode => authFailureOrSuccessOption.hashCode ^ isSubmitting.hashCode;
}
