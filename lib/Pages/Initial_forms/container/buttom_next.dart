import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';
import 'package:nuwe/Pages/Auth/container/show_snackbar.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/primary_buttom.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/Init-Form/state/init_form_state.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux/redux.dart';

class ButtomNext extends StatelessWidget {
  const ButtomNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Function()>(
      converter: (store) => () => {
            if (store.state.initFormState.stepForm == StepForm.thirdStep)
              store.dispatch(ChangeThirdStepStateAction(
                  store.state.initFormState.thirdStepState.copyWith(showErrorFromThirdtStep: true))),
            store.dispatch(const GoToNextFormStepAction()),
            FocusScope.of(context).unfocus(),
          },
      builder: (context, goToNextStep) {
        return PrimaryButtonInput(
          maintext: 'Siguiente',
          onPress: goToNextStep,
        );
      },
    );
  }
}

class ButtomFinish extends StatelessWidget {
  const ButtomFinish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      onWillChange: (_, newViewModel) {
        newViewModel.userFailureOrSuccessOption.forEach((failure) => failure.fold(
            (l) => l.when(
                error: (_) => showSnackBar('Error de conexión.', context, icon: Icons.error),
                emailNotVerified: () {},
                emailNotSend: () {}),
            (r) => {null}));
      },
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) => PrimaryButtonInput(
        maintext: 'Vamos a NUWE',
        onPress: vm.goToNextStep,
      ),
    );
  }
}

class _ViewModel {
  final void Function() goToNextStep;
  final Option<Either<UserFailure, UserSuccess>> userFailureOrSuccessOption;

  _ViewModel({required this.goToNextStep, required this.userFailureOrSuccessOption});

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      userFailureOrSuccessOption: store.state.initFormState.userFailureOrSuccessOption,
      goToNextStep: () => store.dispatch(const CreateUserInformationAction()),
    );
  }
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          userFailureOrSuccessOption == other.userFailureOrSuccessOption;
  @override
  int get hashCode => userFailureOrSuccessOption.hashCode;
}
