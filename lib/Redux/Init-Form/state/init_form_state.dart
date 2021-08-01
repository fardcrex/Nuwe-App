import 'package:freezed_annotation/freezed_annotation.dart';
part 'init_form_state.freezed.dart';

@freezed
abstract class InitFormState with _$InitFormState {
  const factory InitFormState({
    required StepForm stepForm,
  }) = _InitFormState;

  factory InitFormState.initial() => const InitFormState(stepForm: StepForm.firstStep);
}

enum StepForm { firstStep, secondStep, thirdStep, fourthStep, finalStep }
