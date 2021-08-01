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
