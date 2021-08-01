import 'package:redux/redux.dart';

import 'actions.dart';
import 'state/init_form_state.dart';

final initFormReducer = combineReducers<InitFormState>([
  TypedReducer<InitFormState, GoToNextFormStepAction>(_goToNextStepReducer),
  TypedReducer<InitFormState, GoToPreviusFormStepAction>(_goToPreviusStepReducer),
]);

InitFormState _goToNextStepReducer(InitFormState state, GoToNextFormStepAction action) {
  final stepIndex = StepForm.values.indexOf(state.stepForm);
  return state.copyWith(stepForm: StepForm.values[stepIndex + 1]);
}

InitFormState _goToPreviusStepReducer(InitFormState state, GoToPreviusFormStepAction __) {
  final stepIndex = StepForm.values.indexOf(state.stepForm);
  return state.copyWith(stepForm: StepForm.values[stepIndex - 1]);
}
