import 'package:freezed_annotation/freezed_annotation.dart';
part 'init_form_state.freezed.dart';

@freezed
abstract class InitFormState with _$InitFormState {
  const factory InitFormState({
    required StepForm stepForm,
    required FirstStepState firstStepState,
  }) = _InitFormState;

  factory InitFormState.initial() => InitFormState(
        firstStepState: FirstStepState.initial(),
        stepForm: StepForm.firstStep,
      );
}

enum StepForm { firstStep, secondStep, thirdStep, fourthStep, finalStep }

@freezed
abstract class FirstStepState with _$FirstStepState {
  const factory FirstStepState({
    required String country,
    required String city,
    required String bio,
    required int age,
    required bool showErrorFromFirstStep,
  }) = _FirstStepState;

  const FirstStepState._();

  factory FirstStepState.initial() => const FirstStepState(
        showErrorFromFirstStep: false,
        country: '',
        city: '',
        bio: '',
        age: 0,
      );
  bool get canShowCountryError => showErrorFromFirstStep && !isCountryValid;
  bool get canShowCityError => showErrorFromFirstStep && !isCityValid;
  bool get canShowAgeError => showErrorFromFirstStep && !isAgeValid;

  bool get isFirstStepValid => isCountryValid && isCityValid && isAgeValid;
  bool get isCountryValid => country.isNotEmpty;
  bool get isCityValid => city.isNotEmpty;
  bool get isAgeValid => age > 0;
}
