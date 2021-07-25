import 'package:dartz/dartz.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Pages/Auth/container/show_snackbar.dart';
import 'package:nuwe/Pages/Auth/widgets/step_page_forms.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Settings/router.dart';
import 'package:redux/redux.dart';

class ContainerRegisterPage extends StatelessWidget {
  const ContainerRegisterPage({Key? key}) : super(key: key);
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
        return StepPageForms(
          onChangePasswordConfirm: vm.onChangePasswordConfirm,
          onChangePassword: vm.onChangePassword,
          goToNextStep: vm.goToNextStep,
          onChangeEmail: vm.onChangeEmail,
          onChangeNamePerson: vm.onChangeNamePerson,
          onChangeNickname: vm.onChangeNickname,
          isSubmitting: vm.isSubmitting,
          registerWithCredentials: vm.registerWithCredentials,
        );
      },
    );
  }
}

class _ViewModel {
  final void Function(String) onChangePassword;
  final void Function(String) onChangePasswordConfirm;
  final void Function(String) onChangeEmail;
  final void Function(String) onChangeNamePerson;
  final void Function(String) onChangeNickname;
  final void Function() registerWithCredentials;
  final void Function() goToNextStep;
  final bool isSubmitting;

  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  const _ViewModel({
    // bool isChatPageActive,
    required this.onChangePassword,
    required this.onChangePasswordConfirm,
    required this.isSubmitting,
    required this.registerWithCredentials,
    required this.authFailureOrSuccessOption,
    required this.onChangeNamePerson,
    required this.onChangeNickname,
    required this.goToNextStep,
    required this.onChangeEmail,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
        isSubmitting: store.state.authState.isSubmitting,
        onChangeEmail: (value) => store.dispatch(EmailRegisterOnChangeAction(value)),
        onChangePassword: (value) => store.dispatch(PasswordRegisterOnChangeAction(value)),
        onChangePasswordConfirm: (value) => store.dispatch(PasswordConfirmOnChangeAction(value)),
        onChangeNamePerson: (value) => store.dispatch(NamePersonRegisterOnChangeAction(value)),
        onChangeNickname: (value) => store.dispatch(NicknameRegisterOnChangeAction(value)),
        registerWithCredentials: () => store.dispatch(const SignUpWithCredentialsAction()),
        goToNextStep: () => store.dispatch(const GoToNextStepAction()),
        /*    goToNextStep: ()  {
          final failure = getAuthFailureFromFirstStep(store.state.authState);
          store.dispatch(
            UpdateAuthStateAction(store.state.authState.copyWith(
              showErrorMessageRegisterFirstStep: true,
              authFailureOrSuccessOption: failure == null ? none() : optionOf(left(failure)),
            )),
          );
        }, */
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
