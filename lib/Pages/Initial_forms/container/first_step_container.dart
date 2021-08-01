import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/first_step.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux/redux.dart';

class FirsStepContainer extends StatelessWidget {
  const FirsStepContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return FirsStep(
          onChangeCountry: vm.onChangeCountry,
          onChangeCity: vm.onChangeCity,
          onChangeBio: vm.onChangeBio,
          onChangeAge: vm.onChangeAge,
          canShowCountryError: vm.canShowCountryError,
          canShowCityError: vm.canShowCityError,
          canShowAgeError: vm.canShowAgeError,
        );
      },
    );
  }
}

class _ViewModel {
  final void Function(String) onChangeCountry;
  final void Function(String) onChangeCity;
  final void Function(String) onChangeBio;
  final void Function(String) onChangeAge;
  final bool canShowCountryError;
  final bool canShowCityError;
  final bool canShowAgeError;
  const _ViewModel({
    // bool isChatPageActive,
    required this.onChangeCountry,
    required this.onChangeCity,
    required this.onChangeBio,
    required this.onChangeAge,
    required this.canShowCountryError,
    required this.canShowCityError,
    required this.canShowAgeError,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      onChangeCountry: (value) => store.dispatch(CountryOnChangeAction(value)),
      onChangeCity: (value) => store.dispatch(CityOnChangeAction(value)),
      onChangeBio: (value) => store.dispatch(BioOnChangeAction(value)),
      onChangeAge: (value) => store.dispatch(AgeOnChangeAction(int.parse(value))),
      canShowCountryError: store.state.initFormState.firstStepState.canShowCountryError,
      canShowCityError: store.state.initFormState.firstStepState.canShowCityError,
      canShowAgeError: store.state.initFormState.firstStepState.canShowAgeError,
    );
  }

  /* @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          isSubmitting == other.isSubmitting &&
          authFailureOrSuccessOption == other.authFailureOrSuccessOption;
  @override
  int get hashCode => authFailureOrSuccessOption.hashCode ^ isSubmitting.hashCode; */
}
