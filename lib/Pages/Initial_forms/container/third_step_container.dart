import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/third_step.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux/redux.dart';

class ThirdStepContainer extends StatelessWidget {
  const ThirdStepContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return ThirdStep(
          onChangeLookingWork: vm.onChangeLookingWork,
          onChangeDesiredJob: vm.onChangeDesiredJob,
          onChangeLocation: vm.onChangeLocation,
          onChangeSalaryRange: vm.onChangeSalaryRange,
          canShowDesiredJobError: vm.canShowDesiredJobError,
          receiveNotificationFromCompaniesChange: vm.receiveNotificationFromCompaniesChange,
          disponibilityToTravelChange: vm.disponibilityToTravelChange,
          workRemoteChange: vm.workRemoteChange,
          immediateIncorporationChange: vm.immediateIncorporationChange,
        );
      },
    );
  }
}

class _ViewModel {
  final void Function(String) onChangeLocation;
  final void Function(String) onChangeDesiredJob;
  final void Function(String) onChangeSalaryRange;
  final void Function(String) onChangeLookingWork;
  final bool canShowDesiredJobError;
  final Function() workRemoteChange;
  final Function() disponibilityToTravelChange;
  final Function() immediateIncorporationChange;
  final Function() receiveNotificationFromCompaniesChange;
  const _ViewModel({
    // bool isChatPageActive,
    required this.onChangeLookingWork,
    required this.onChangeDesiredJob,
    required this.onChangeLocation,
    required this.onChangeSalaryRange,
    required this.canShowDesiredJobError,
    required this.receiveNotificationFromCompaniesChange,
    required this.disponibilityToTravelChange,
    required this.workRemoteChange,
    required this.immediateIncorporationChange,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    final thirdStepState = store.state.initFormState.thirdStepState;
    return _ViewModel(
      onChangeLookingWork: (value) =>
          store.dispatch(ChangeThirdStepStateAction(thirdStepState.copyWith(lookingWork: value))),
      onChangeDesiredJob: (value) =>
          store.dispatch(ChangeThirdStepStateAction(thirdStepState.copyWith(desiredJob: value))),
      onChangeLocation: (value) =>
          store.dispatch(ChangeThirdStepStateAction(thirdStepState.copyWith(location: value))),
      onChangeSalaryRange: (value) =>
          store.dispatch(ChangeThirdStepStateAction(thirdStepState.copyWith(salaryRange: int.parse(value)))),
      canShowDesiredJobError: thirdStepState.canShowDesiredJobError,
      receiveNotificationFromCompaniesChange: () => store.dispatch(ChangeThirdStepStateAction(thirdStepState
          .copyWith(receiveNotificationFromCompanies: !thirdStepState.receiveNotificationFromCompanies))),
      disponibilityToTravelChange: () => store.dispatch(ChangeThirdStepStateAction(thirdStepState.copyWith(
        disponibilityToTravel: !thirdStepState.disponibilityToTravel,
      ))),
      workRemoteChange: () => store.dispatch(
        ChangeThirdStepStateAction(thirdStepState.copyWith(workRemote: !thirdStepState.workRemote)),
      ),
      immediateIncorporationChange: () => store.dispatch(
        ChangeThirdStepStateAction(thirdStepState.copyWith(
          immediateIncorporation: !thirdStepState.immediateIncorporation,
        )),
      ),
    );
  }
/* 
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          canShowCountryError == other.canShowCountryError &&
          canShowCityError == other.canShowCityError &&
          canShowAgeError == other.canShowAgeError;

  @override
  int get hashCode => canShowCountryError.hashCode ^ canShowCityError.hashCode ^ canShowAgeError.hashCode; */
}
