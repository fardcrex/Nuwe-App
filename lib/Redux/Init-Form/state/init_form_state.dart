import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';
part 'init_form_state.freezed.dart';

@freezed
abstract class InitFormState with _$InitFormState {
  const factory InitFormState({
    required StepForm stepForm,
    required FirstStepState firstStepState,
    required SecondStepState secondStepState,
    required ThirdStepState thirdStepState,
    required FourthStepState fourthStepState,
    required Option<Either<UserFailure, UserSuccess>> userFailureOrSuccessOption,
  }) = _InitFormState;

  factory InitFormState.initial() => InitFormState(
      stepForm: StepForm.firstStep,
      firstStepState: FirstStepState.initial(),
      secondStepState: SecondStepState.initial(),
      thirdStepState: ThirdStepState.initial(),
      fourthStepState: FourthStepState(<String>[].toBuiltSet()),
      userFailureOrSuccessOption: none());
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
  bool get isAgeValid => age > 0 && age < 120;
}

@freezed
abstract class SecondStepState with _$SecondStepState {
  const factory SecondStepState({
    required String githubLink,
    required String linkedinLink,
    required String twitterLink,
    required String instagramLink,
    required String portafolioLink,
  }) = _SecondStepState;
  factory SecondStepState.initial() => const SecondStepState(
        githubLink: '',
        linkedinLink: '',
        twitterLink: '',
        instagramLink: '',
        portafolioLink: '',
      );
}

@freezed
abstract class ThirdStepState with _$ThirdStepState {
  const factory ThirdStepState({
    required bool showErrorFromThirdtStep,
    required String lookingWork,
    required String desiredJob,
    required String location,
    required int salaryRange,
    required bool receiveNotificationFromCompanies,
    required bool disponibilityToTravel,
    required bool workRemote,
    required bool immediateIncorporation,
  }) = _ThirdStepState;
  const ThirdStepState._();
  bool get canShowDesiredJobError => showErrorFromThirdtStep && desiredJob.isEmpty;
  factory ThirdStepState.initial() => const ThirdStepState(
        lookingWork: '',
        desiredJob: '',
        location: '',
        salaryRange: 0,
        showErrorFromThirdtStep: false,
        receiveNotificationFromCompanies: false,
        disponibilityToTravel: false,
        workRemote: false,
        immediateIncorporation: false,
      );
}

@freezed
abstract class FourthStepState with _$FourthStepState {
  const factory FourthStepState(
    BuiltSet<String> stacks,
  ) = _FourthStepState;
}
