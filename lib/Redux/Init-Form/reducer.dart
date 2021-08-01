import 'package:redux/redux.dart';

import 'actions.dart';
import 'state/init_form_state.dart';

final initFormReducer = combineReducers<InitFormState>([
  TypedReducer<InitFormState, GoToNextFormStepAction>(_goToNextStepReducer),
  TypedReducer<InitFormState, GoToPreviusFormStepAction>(_goToPreviusStepReducer),
  TypedReducer<InitFormState, CountryOnChangeAction>(_countryOnChangeReducer),
  TypedReducer<InitFormState, CityOnChangeAction>(_cityOnChangeReducer),
  TypedReducer<InitFormState, BioOnChangeAction>(_bioOnChangeReducer),
  TypedReducer<InitFormState, AgeOnChangeAction>(_ageOnChangeReducer),
]);

InitFormState _goToNextStepReducer(InitFormState state, GoToNextFormStepAction action) {
  final stepIndex = StepForm.values.indexOf(state.stepForm);
  final stepForm = stepIndex == 0 && state.firstStepState.isFirstStepValid || stepIndex != 0
      ? StepForm.values[stepIndex + 1]
      : StepForm.values[stepIndex];

  return state.copyWith(
      stepForm: stepForm, firstStepState: state.firstStepState.copyWith(showErrorFromFirstStep: true));
}

InitFormState _goToPreviusStepReducer(InitFormState state, GoToPreviusFormStepAction __) {
  final stepIndex = StepForm.values.indexOf(state.stepForm);
  return state.copyWith(stepForm: StepForm.values[stepIndex - 1]);
}

InitFormState _cityOnChangeReducer(InitFormState state, CityOnChangeAction action) {
  return state.copyWith.firstStepState(city: action.city);
}

InitFormState _countryOnChangeReducer(InitFormState state, CountryOnChangeAction action) {
  return state.copyWith.firstStepState(country: action.country);
}

InitFormState _bioOnChangeReducer(InitFormState state, BioOnChangeAction action) {
  return state.copyWith.firstStepState(bio: action.bio);
}

InitFormState _ageOnChangeReducer(InitFormState state, AgeOnChangeAction action) {
  return state.copyWith.firstStepState(age: action.age);
}
