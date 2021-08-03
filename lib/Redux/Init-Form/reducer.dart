import 'package:redux/redux.dart';
import 'actions.dart';
import 'state/init_form_state.dart';

final initFormReducer = combineReducers<InitFormState>([
  TypedReducer<InitFormState, UpdateFormStateAction>(_updateFormStateReducer),
  TypedReducer<InitFormState, GoToNextFormStepAction>(_goToNextStepReducer),
  TypedReducer<InitFormState, GoToPreviusFormStepAction>(_goToPreviusStepReducer),
  TypedReducer<InitFormState, CountryOnChangeAction>(_countryOnChangeReducer),
  TypedReducer<InitFormState, CityOnChangeAction>(_cityOnChangeReducer),
  TypedReducer<InitFormState, BioOnChangeAction>(_bioOnChangeReducer),
  TypedReducer<InitFormState, AgeOnChangeAction>(_ageOnChangeReducer),
  TypedReducer<InitFormState, ChangeSecondStepStateAction>(_changeSecondStepStateReducer),
  TypedReducer<InitFormState, ChangeThirdStepStateAction>(_changeThirdStepStateReducer),
  TypedReducer<InitFormState, AddStackAction>(_addStackReducer),
  TypedReducer<InitFormState, RemoveStackAction>(_removeStackReducer),
]);

InitFormState _goToNextStepReducer(InitFormState state, GoToNextFormStepAction action) {
  return state.copyWith(
    stepForm: _getStepForm(state),
    firstStepState: state.firstStepState.copyWith(showErrorFromFirstStep: true),
  );
}

StepForm _getStepForm(InitFormState state) {
  final stepIndex = StepForm.values.indexOf(state.stepForm);
  if (stepIndex == 0 && !state.firstStepState.isFirstStepValid) return StepForm.values[stepIndex];
  if (stepIndex == 2 && state.thirdStepState.desiredJob.isEmpty) return StepForm.values[stepIndex];
  return StepForm.values[stepIndex + 1];
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

InitFormState _changeSecondStepStateReducer(InitFormState state, ChangeSecondStepStateAction action) {
  return state.copyWith(secondStepState: action.secondStepState);
}

InitFormState _changeThirdStepStateReducer(InitFormState state, ChangeThirdStepStateAction action) {
  return state.copyWith(thirdStepState: action.thirdStepState);
}

InitFormState _addStackReducer(InitFormState state, AddStackAction action) {
  return state.copyWith
      .fourthStepState(stacks: state.fourthStepState.stacks.rebuild((stacks) => stacks.add(action.stack)));
}

InitFormState _removeStackReducer(InitFormState state, RemoveStackAction action) {
  return state.copyWith
      .fourthStepState(stacks: state.fourthStepState.stacks.rebuild((stacks) => stacks.remove(action.stack)));
}

InitFormState _updateFormStateReducer(InitFormState state, UpdateFormStateAction action) {
  return action.initFormState;
}
