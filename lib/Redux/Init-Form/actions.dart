import 'package:nuwe/Redux/Init-Form/state/init_form_state.dart';

class GoToNextFormStepAction {
  const GoToNextFormStepAction();
}

class GoToPreviusFormStepAction {
  const GoToPreviusFormStepAction();
}

class CountryOnChangeAction {
  final String country;

  CountryOnChangeAction(this.country);
}

class CityOnChangeAction {
  final String city;

  CityOnChangeAction(this.city);
}

class BioOnChangeAction {
  final String bio;

  BioOnChangeAction(this.bio);
}

class AgeOnChangeAction {
  final int age;

  AgeOnChangeAction(this.age);
}

class ChangeSecondStepStateAction {
  final SecondStepState secondStepState;

  ChangeSecondStepStateAction(this.secondStepState);
}

class ChangeThirdStepStateAction {
  final ThirdStepState thirdStepState;

  ChangeThirdStepStateAction(this.thirdStepState);
}

class RemoveStackAction {
  final String stack;

  RemoveStackAction(this.stack);
}

class AddStackAction {
  final String stack;

  AddStackAction(this.stack);
}

class CreateUserInformationAction {
  const CreateUserInformationAction();
}

class UpdateFormStateAction {
  final InitFormState initFormState;

  UpdateFormStateAction(this.initFormState);
}
