// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'init_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitFormStateTearOff {
  const _$InitFormStateTearOff();

  _InitFormState call(
      {required StepForm stepForm,
      required FirstStepState firstStepState,
      required SecondStepState secondStepState,
      required ThirdStepState thirdStepState,
      required FourthStepState fourthStepState,
      required Option<Either<UserFailure, UserSuccess>>
          userFailureOrSuccessOption}) {
    return _InitFormState(
      stepForm: stepForm,
      firstStepState: firstStepState,
      secondStepState: secondStepState,
      thirdStepState: thirdStepState,
      fourthStepState: fourthStepState,
      userFailureOrSuccessOption: userFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $InitFormState = _$InitFormStateTearOff();

/// @nodoc
mixin _$InitFormState {
  StepForm get stepForm => throw _privateConstructorUsedError;
  FirstStepState get firstStepState => throw _privateConstructorUsedError;
  SecondStepState get secondStepState => throw _privateConstructorUsedError;
  ThirdStepState get thirdStepState => throw _privateConstructorUsedError;
  FourthStepState get fourthStepState => throw _privateConstructorUsedError;
  Option<Either<UserFailure, UserSuccess>> get userFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitFormStateCopyWith<InitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitFormStateCopyWith<$Res> {
  factory $InitFormStateCopyWith(
          InitFormState value, $Res Function(InitFormState) then) =
      _$InitFormStateCopyWithImpl<$Res>;
  $Res call(
      {StepForm stepForm,
      FirstStepState firstStepState,
      SecondStepState secondStepState,
      ThirdStepState thirdStepState,
      FourthStepState fourthStepState,
      Option<Either<UserFailure, UserSuccess>> userFailureOrSuccessOption});

  $FirstStepStateCopyWith<$Res> get firstStepState;
  $SecondStepStateCopyWith<$Res> get secondStepState;
  $ThirdStepStateCopyWith<$Res> get thirdStepState;
  $FourthStepStateCopyWith<$Res> get fourthStepState;
}

/// @nodoc
class _$InitFormStateCopyWithImpl<$Res>
    implements $InitFormStateCopyWith<$Res> {
  _$InitFormStateCopyWithImpl(this._value, this._then);

  final InitFormState _value;
  // ignore: unused_field
  final $Res Function(InitFormState) _then;

  @override
  $Res call({
    Object? stepForm = freezed,
    Object? firstStepState = freezed,
    Object? secondStepState = freezed,
    Object? thirdStepState = freezed,
    Object? fourthStepState = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      stepForm: stepForm == freezed
          ? _value.stepForm
          : stepForm // ignore: cast_nullable_to_non_nullable
              as StepForm,
      firstStepState: firstStepState == freezed
          ? _value.firstStepState
          : firstStepState // ignore: cast_nullable_to_non_nullable
              as FirstStepState,
      secondStepState: secondStepState == freezed
          ? _value.secondStepState
          : secondStepState // ignore: cast_nullable_to_non_nullable
              as SecondStepState,
      thirdStepState: thirdStepState == freezed
          ? _value.thirdStepState
          : thirdStepState // ignore: cast_nullable_to_non_nullable
              as ThirdStepState,
      fourthStepState: fourthStepState == freezed
          ? _value.fourthStepState
          : fourthStepState // ignore: cast_nullable_to_non_nullable
              as FourthStepState,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, UserSuccess>>,
    ));
  }

  @override
  $FirstStepStateCopyWith<$Res> get firstStepState {
    return $FirstStepStateCopyWith<$Res>(_value.firstStepState, (value) {
      return _then(_value.copyWith(firstStepState: value));
    });
  }

  @override
  $SecondStepStateCopyWith<$Res> get secondStepState {
    return $SecondStepStateCopyWith<$Res>(_value.secondStepState, (value) {
      return _then(_value.copyWith(secondStepState: value));
    });
  }

  @override
  $ThirdStepStateCopyWith<$Res> get thirdStepState {
    return $ThirdStepStateCopyWith<$Res>(_value.thirdStepState, (value) {
      return _then(_value.copyWith(thirdStepState: value));
    });
  }

  @override
  $FourthStepStateCopyWith<$Res> get fourthStepState {
    return $FourthStepStateCopyWith<$Res>(_value.fourthStepState, (value) {
      return _then(_value.copyWith(fourthStepState: value));
    });
  }
}

/// @nodoc
abstract class _$InitFormStateCopyWith<$Res>
    implements $InitFormStateCopyWith<$Res> {
  factory _$InitFormStateCopyWith(
          _InitFormState value, $Res Function(_InitFormState) then) =
      __$InitFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StepForm stepForm,
      FirstStepState firstStepState,
      SecondStepState secondStepState,
      ThirdStepState thirdStepState,
      FourthStepState fourthStepState,
      Option<Either<UserFailure, UserSuccess>> userFailureOrSuccessOption});

  @override
  $FirstStepStateCopyWith<$Res> get firstStepState;
  @override
  $SecondStepStateCopyWith<$Res> get secondStepState;
  @override
  $ThirdStepStateCopyWith<$Res> get thirdStepState;
  @override
  $FourthStepStateCopyWith<$Res> get fourthStepState;
}

/// @nodoc
class __$InitFormStateCopyWithImpl<$Res>
    extends _$InitFormStateCopyWithImpl<$Res>
    implements _$InitFormStateCopyWith<$Res> {
  __$InitFormStateCopyWithImpl(
      _InitFormState _value, $Res Function(_InitFormState) _then)
      : super(_value, (v) => _then(v as _InitFormState));

  @override
  _InitFormState get _value => super._value as _InitFormState;

  @override
  $Res call({
    Object? stepForm = freezed,
    Object? firstStepState = freezed,
    Object? secondStepState = freezed,
    Object? thirdStepState = freezed,
    Object? fourthStepState = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_InitFormState(
      stepForm: stepForm == freezed
          ? _value.stepForm
          : stepForm // ignore: cast_nullable_to_non_nullable
              as StepForm,
      firstStepState: firstStepState == freezed
          ? _value.firstStepState
          : firstStepState // ignore: cast_nullable_to_non_nullable
              as FirstStepState,
      secondStepState: secondStepState == freezed
          ? _value.secondStepState
          : secondStepState // ignore: cast_nullable_to_non_nullable
              as SecondStepState,
      thirdStepState: thirdStepState == freezed
          ? _value.thirdStepState
          : thirdStepState // ignore: cast_nullable_to_non_nullable
              as ThirdStepState,
      fourthStepState: fourthStepState == freezed
          ? _value.fourthStepState
          : fourthStepState // ignore: cast_nullable_to_non_nullable
              as FourthStepState,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, UserSuccess>>,
    ));
  }
}

/// @nodoc

class _$_InitFormState implements _InitFormState {
  const _$_InitFormState(
      {required this.stepForm,
      required this.firstStepState,
      required this.secondStepState,
      required this.thirdStepState,
      required this.fourthStepState,
      required this.userFailureOrSuccessOption});

  @override
  final StepForm stepForm;
  @override
  final FirstStepState firstStepState;
  @override
  final SecondStepState secondStepState;
  @override
  final ThirdStepState thirdStepState;
  @override
  final FourthStepState fourthStepState;
  @override
  final Option<Either<UserFailure, UserSuccess>> userFailureOrSuccessOption;

  @override
  String toString() {
    return 'InitFormState(stepForm: $stepForm, firstStepState: $firstStepState, secondStepState: $secondStepState, thirdStepState: $thirdStepState, fourthStepState: $fourthStepState, userFailureOrSuccessOption: $userFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitFormState &&
            (identical(other.stepForm, stepForm) ||
                const DeepCollectionEquality()
                    .equals(other.stepForm, stepForm)) &&
            (identical(other.firstStepState, firstStepState) ||
                const DeepCollectionEquality()
                    .equals(other.firstStepState, firstStepState)) &&
            (identical(other.secondStepState, secondStepState) ||
                const DeepCollectionEquality()
                    .equals(other.secondStepState, secondStepState)) &&
            (identical(other.thirdStepState, thirdStepState) ||
                const DeepCollectionEquality()
                    .equals(other.thirdStepState, thirdStepState)) &&
            (identical(other.fourthStepState, fourthStepState) ||
                const DeepCollectionEquality()
                    .equals(other.fourthStepState, fourthStepState)) &&
            (identical(other.userFailureOrSuccessOption,
                    userFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.userFailureOrSuccessOption,
                    userFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stepForm) ^
      const DeepCollectionEquality().hash(firstStepState) ^
      const DeepCollectionEquality().hash(secondStepState) ^
      const DeepCollectionEquality().hash(thirdStepState) ^
      const DeepCollectionEquality().hash(fourthStepState) ^
      const DeepCollectionEquality().hash(userFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$InitFormStateCopyWith<_InitFormState> get copyWith =>
      __$InitFormStateCopyWithImpl<_InitFormState>(this, _$identity);
}

abstract class _InitFormState implements InitFormState {
  const factory _InitFormState(
      {required StepForm stepForm,
      required FirstStepState firstStepState,
      required SecondStepState secondStepState,
      required ThirdStepState thirdStepState,
      required FourthStepState fourthStepState,
      required Option<Either<UserFailure, UserSuccess>>
          userFailureOrSuccessOption}) = _$_InitFormState;

  @override
  StepForm get stepForm => throw _privateConstructorUsedError;
  @override
  FirstStepState get firstStepState => throw _privateConstructorUsedError;
  @override
  SecondStepState get secondStepState => throw _privateConstructorUsedError;
  @override
  ThirdStepState get thirdStepState => throw _privateConstructorUsedError;
  @override
  FourthStepState get fourthStepState => throw _privateConstructorUsedError;
  @override
  Option<Either<UserFailure, UserSuccess>> get userFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitFormStateCopyWith<_InitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FirstStepStateTearOff {
  const _$FirstStepStateTearOff();

  _FirstStepState call(
      {required String country,
      required String city,
      required String bio,
      required int age,
      required bool showErrorFromFirstStep}) {
    return _FirstStepState(
      country: country,
      city: city,
      bio: bio,
      age: age,
      showErrorFromFirstStep: showErrorFromFirstStep,
    );
  }
}

/// @nodoc
const $FirstStepState = _$FirstStepStateTearOff();

/// @nodoc
mixin _$FirstStepState {
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  bool get showErrorFromFirstStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstStepStateCopyWith<FirstStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStepStateCopyWith<$Res> {
  factory $FirstStepStateCopyWith(
          FirstStepState value, $Res Function(FirstStepState) then) =
      _$FirstStepStateCopyWithImpl<$Res>;
  $Res call(
      {String country,
      String city,
      String bio,
      int age,
      bool showErrorFromFirstStep});
}

/// @nodoc
class _$FirstStepStateCopyWithImpl<$Res>
    implements $FirstStepStateCopyWith<$Res> {
  _$FirstStepStateCopyWithImpl(this._value, this._then);

  final FirstStepState _value;
  // ignore: unused_field
  final $Res Function(FirstStepState) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? age = freezed,
    Object? showErrorFromFirstStep = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorFromFirstStep: showErrorFromFirstStep == freezed
          ? _value.showErrorFromFirstStep
          : showErrorFromFirstStep // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FirstStepStateCopyWith<$Res>
    implements $FirstStepStateCopyWith<$Res> {
  factory _$FirstStepStateCopyWith(
          _FirstStepState value, $Res Function(_FirstStepState) then) =
      __$FirstStepStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String country,
      String city,
      String bio,
      int age,
      bool showErrorFromFirstStep});
}

/// @nodoc
class __$FirstStepStateCopyWithImpl<$Res>
    extends _$FirstStepStateCopyWithImpl<$Res>
    implements _$FirstStepStateCopyWith<$Res> {
  __$FirstStepStateCopyWithImpl(
      _FirstStepState _value, $Res Function(_FirstStepState) _then)
      : super(_value, (v) => _then(v as _FirstStepState));

  @override
  _FirstStepState get _value => super._value as _FirstStepState;

  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? age = freezed,
    Object? showErrorFromFirstStep = freezed,
  }) {
    return _then(_FirstStepState(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorFromFirstStep: showErrorFromFirstStep == freezed
          ? _value.showErrorFromFirstStep
          : showErrorFromFirstStep // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FirstStepState extends _FirstStepState {
  const _$_FirstStepState(
      {required this.country,
      required this.city,
      required this.bio,
      required this.age,
      required this.showErrorFromFirstStep})
      : super._();

  @override
  final String country;
  @override
  final String city;
  @override
  final String bio;
  @override
  final int age;
  @override
  final bool showErrorFromFirstStep;

  @override
  String toString() {
    return 'FirstStepState(country: $country, city: $city, bio: $bio, age: $age, showErrorFromFirstStep: $showErrorFromFirstStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstStepState &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.showErrorFromFirstStep, showErrorFromFirstStep) ||
                const DeepCollectionEquality().equals(
                    other.showErrorFromFirstStep, showErrorFromFirstStep)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(showErrorFromFirstStep);

  @JsonKey(ignore: true)
  @override
  _$FirstStepStateCopyWith<_FirstStepState> get copyWith =>
      __$FirstStepStateCopyWithImpl<_FirstStepState>(this, _$identity);
}

abstract class _FirstStepState extends FirstStepState {
  const factory _FirstStepState(
      {required String country,
      required String city,
      required String bio,
      required int age,
      required bool showErrorFromFirstStep}) = _$_FirstStepState;
  const _FirstStepState._() : super._();

  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  bool get showErrorFromFirstStep => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirstStepStateCopyWith<_FirstStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecondStepStateTearOff {
  const _$SecondStepStateTearOff();

  _SecondStepState call(
      {required String githubLink,
      required String linkedinLink,
      required String twitterLink,
      required String instagramLink,
      required String portafolioLink}) {
    return _SecondStepState(
      githubLink: githubLink,
      linkedinLink: linkedinLink,
      twitterLink: twitterLink,
      instagramLink: instagramLink,
      portafolioLink: portafolioLink,
    );
  }
}

/// @nodoc
const $SecondStepState = _$SecondStepStateTearOff();

/// @nodoc
mixin _$SecondStepState {
  String get githubLink => throw _privateConstructorUsedError;
  String get linkedinLink => throw _privateConstructorUsedError;
  String get twitterLink => throw _privateConstructorUsedError;
  String get instagramLink => throw _privateConstructorUsedError;
  String get portafolioLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondStepStateCopyWith<SecondStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondStepStateCopyWith<$Res> {
  factory $SecondStepStateCopyWith(
          SecondStepState value, $Res Function(SecondStepState) then) =
      _$SecondStepStateCopyWithImpl<$Res>;
  $Res call(
      {String githubLink,
      String linkedinLink,
      String twitterLink,
      String instagramLink,
      String portafolioLink});
}

/// @nodoc
class _$SecondStepStateCopyWithImpl<$Res>
    implements $SecondStepStateCopyWith<$Res> {
  _$SecondStepStateCopyWithImpl(this._value, this._then);

  final SecondStepState _value;
  // ignore: unused_field
  final $Res Function(SecondStepState) _then;

  @override
  $Res call({
    Object? githubLink = freezed,
    Object? linkedinLink = freezed,
    Object? twitterLink = freezed,
    Object? instagramLink = freezed,
    Object? portafolioLink = freezed,
  }) {
    return _then(_value.copyWith(
      githubLink: githubLink == freezed
          ? _value.githubLink
          : githubLink // ignore: cast_nullable_to_non_nullable
              as String,
      linkedinLink: linkedinLink == freezed
          ? _value.linkedinLink
          : linkedinLink // ignore: cast_nullable_to_non_nullable
              as String,
      twitterLink: twitterLink == freezed
          ? _value.twitterLink
          : twitterLink // ignore: cast_nullable_to_non_nullable
              as String,
      instagramLink: instagramLink == freezed
          ? _value.instagramLink
          : instagramLink // ignore: cast_nullable_to_non_nullable
              as String,
      portafolioLink: portafolioLink == freezed
          ? _value.portafolioLink
          : portafolioLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SecondStepStateCopyWith<$Res>
    implements $SecondStepStateCopyWith<$Res> {
  factory _$SecondStepStateCopyWith(
          _SecondStepState value, $Res Function(_SecondStepState) then) =
      __$SecondStepStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String githubLink,
      String linkedinLink,
      String twitterLink,
      String instagramLink,
      String portafolioLink});
}

/// @nodoc
class __$SecondStepStateCopyWithImpl<$Res>
    extends _$SecondStepStateCopyWithImpl<$Res>
    implements _$SecondStepStateCopyWith<$Res> {
  __$SecondStepStateCopyWithImpl(
      _SecondStepState _value, $Res Function(_SecondStepState) _then)
      : super(_value, (v) => _then(v as _SecondStepState));

  @override
  _SecondStepState get _value => super._value as _SecondStepState;

  @override
  $Res call({
    Object? githubLink = freezed,
    Object? linkedinLink = freezed,
    Object? twitterLink = freezed,
    Object? instagramLink = freezed,
    Object? portafolioLink = freezed,
  }) {
    return _then(_SecondStepState(
      githubLink: githubLink == freezed
          ? _value.githubLink
          : githubLink // ignore: cast_nullable_to_non_nullable
              as String,
      linkedinLink: linkedinLink == freezed
          ? _value.linkedinLink
          : linkedinLink // ignore: cast_nullable_to_non_nullable
              as String,
      twitterLink: twitterLink == freezed
          ? _value.twitterLink
          : twitterLink // ignore: cast_nullable_to_non_nullable
              as String,
      instagramLink: instagramLink == freezed
          ? _value.instagramLink
          : instagramLink // ignore: cast_nullable_to_non_nullable
              as String,
      portafolioLink: portafolioLink == freezed
          ? _value.portafolioLink
          : portafolioLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SecondStepState implements _SecondStepState {
  const _$_SecondStepState(
      {required this.githubLink,
      required this.linkedinLink,
      required this.twitterLink,
      required this.instagramLink,
      required this.portafolioLink});

  @override
  final String githubLink;
  @override
  final String linkedinLink;
  @override
  final String twitterLink;
  @override
  final String instagramLink;
  @override
  final String portafolioLink;

  @override
  String toString() {
    return 'SecondStepState(githubLink: $githubLink, linkedinLink: $linkedinLink, twitterLink: $twitterLink, instagramLink: $instagramLink, portafolioLink: $portafolioLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SecondStepState &&
            (identical(other.githubLink, githubLink) ||
                const DeepCollectionEquality()
                    .equals(other.githubLink, githubLink)) &&
            (identical(other.linkedinLink, linkedinLink) ||
                const DeepCollectionEquality()
                    .equals(other.linkedinLink, linkedinLink)) &&
            (identical(other.twitterLink, twitterLink) ||
                const DeepCollectionEquality()
                    .equals(other.twitterLink, twitterLink)) &&
            (identical(other.instagramLink, instagramLink) ||
                const DeepCollectionEquality()
                    .equals(other.instagramLink, instagramLink)) &&
            (identical(other.portafolioLink, portafolioLink) ||
                const DeepCollectionEquality()
                    .equals(other.portafolioLink, portafolioLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(githubLink) ^
      const DeepCollectionEquality().hash(linkedinLink) ^
      const DeepCollectionEquality().hash(twitterLink) ^
      const DeepCollectionEquality().hash(instagramLink) ^
      const DeepCollectionEquality().hash(portafolioLink);

  @JsonKey(ignore: true)
  @override
  _$SecondStepStateCopyWith<_SecondStepState> get copyWith =>
      __$SecondStepStateCopyWithImpl<_SecondStepState>(this, _$identity);
}

abstract class _SecondStepState implements SecondStepState {
  const factory _SecondStepState(
      {required String githubLink,
      required String linkedinLink,
      required String twitterLink,
      required String instagramLink,
      required String portafolioLink}) = _$_SecondStepState;

  @override
  String get githubLink => throw _privateConstructorUsedError;
  @override
  String get linkedinLink => throw _privateConstructorUsedError;
  @override
  String get twitterLink => throw _privateConstructorUsedError;
  @override
  String get instagramLink => throw _privateConstructorUsedError;
  @override
  String get portafolioLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SecondStepStateCopyWith<_SecondStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThirdStepStateTearOff {
  const _$ThirdStepStateTearOff();

  _ThirdStepState call(
      {required bool showErrorFromThirdtStep,
      required String lookingWork,
      required String desiredJob,
      required String location,
      required int salaryRange,
      required bool receiveNotificationFromCompanies,
      required bool disponibilityToTravel,
      required bool workRemote,
      required bool immediateIncorporation}) {
    return _ThirdStepState(
      showErrorFromThirdtStep: showErrorFromThirdtStep,
      lookingWork: lookingWork,
      desiredJob: desiredJob,
      location: location,
      salaryRange: salaryRange,
      receiveNotificationFromCompanies: receiveNotificationFromCompanies,
      disponibilityToTravel: disponibilityToTravel,
      workRemote: workRemote,
      immediateIncorporation: immediateIncorporation,
    );
  }
}

/// @nodoc
const $ThirdStepState = _$ThirdStepStateTearOff();

/// @nodoc
mixin _$ThirdStepState {
  bool get showErrorFromThirdtStep => throw _privateConstructorUsedError;
  String get lookingWork => throw _privateConstructorUsedError;
  String get desiredJob => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get salaryRange => throw _privateConstructorUsedError;
  bool get receiveNotificationFromCompanies =>
      throw _privateConstructorUsedError;
  bool get disponibilityToTravel => throw _privateConstructorUsedError;
  bool get workRemote => throw _privateConstructorUsedError;
  bool get immediateIncorporation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThirdStepStateCopyWith<ThirdStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdStepStateCopyWith<$Res> {
  factory $ThirdStepStateCopyWith(
          ThirdStepState value, $Res Function(ThirdStepState) then) =
      _$ThirdStepStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorFromThirdtStep,
      String lookingWork,
      String desiredJob,
      String location,
      int salaryRange,
      bool receiveNotificationFromCompanies,
      bool disponibilityToTravel,
      bool workRemote,
      bool immediateIncorporation});
}

/// @nodoc
class _$ThirdStepStateCopyWithImpl<$Res>
    implements $ThirdStepStateCopyWith<$Res> {
  _$ThirdStepStateCopyWithImpl(this._value, this._then);

  final ThirdStepState _value;
  // ignore: unused_field
  final $Res Function(ThirdStepState) _then;

  @override
  $Res call({
    Object? showErrorFromThirdtStep = freezed,
    Object? lookingWork = freezed,
    Object? desiredJob = freezed,
    Object? location = freezed,
    Object? salaryRange = freezed,
    Object? receiveNotificationFromCompanies = freezed,
    Object? disponibilityToTravel = freezed,
    Object? workRemote = freezed,
    Object? immediateIncorporation = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorFromThirdtStep: showErrorFromThirdtStep == freezed
          ? _value.showErrorFromThirdtStep
          : showErrorFromThirdtStep // ignore: cast_nullable_to_non_nullable
              as bool,
      lookingWork: lookingWork == freezed
          ? _value.lookingWork
          : lookingWork // ignore: cast_nullable_to_non_nullable
              as String,
      desiredJob: desiredJob == freezed
          ? _value.desiredJob
          : desiredJob // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      salaryRange: salaryRange == freezed
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as int,
      receiveNotificationFromCompanies: receiveNotificationFromCompanies ==
              freezed
          ? _value.receiveNotificationFromCompanies
          : receiveNotificationFromCompanies // ignore: cast_nullable_to_non_nullable
              as bool,
      disponibilityToTravel: disponibilityToTravel == freezed
          ? _value.disponibilityToTravel
          : disponibilityToTravel // ignore: cast_nullable_to_non_nullable
              as bool,
      workRemote: workRemote == freezed
          ? _value.workRemote
          : workRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      immediateIncorporation: immediateIncorporation == freezed
          ? _value.immediateIncorporation
          : immediateIncorporation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ThirdStepStateCopyWith<$Res>
    implements $ThirdStepStateCopyWith<$Res> {
  factory _$ThirdStepStateCopyWith(
          _ThirdStepState value, $Res Function(_ThirdStepState) then) =
      __$ThirdStepStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showErrorFromThirdtStep,
      String lookingWork,
      String desiredJob,
      String location,
      int salaryRange,
      bool receiveNotificationFromCompanies,
      bool disponibilityToTravel,
      bool workRemote,
      bool immediateIncorporation});
}

/// @nodoc
class __$ThirdStepStateCopyWithImpl<$Res>
    extends _$ThirdStepStateCopyWithImpl<$Res>
    implements _$ThirdStepStateCopyWith<$Res> {
  __$ThirdStepStateCopyWithImpl(
      _ThirdStepState _value, $Res Function(_ThirdStepState) _then)
      : super(_value, (v) => _then(v as _ThirdStepState));

  @override
  _ThirdStepState get _value => super._value as _ThirdStepState;

  @override
  $Res call({
    Object? showErrorFromThirdtStep = freezed,
    Object? lookingWork = freezed,
    Object? desiredJob = freezed,
    Object? location = freezed,
    Object? salaryRange = freezed,
    Object? receiveNotificationFromCompanies = freezed,
    Object? disponibilityToTravel = freezed,
    Object? workRemote = freezed,
    Object? immediateIncorporation = freezed,
  }) {
    return _then(_ThirdStepState(
      showErrorFromThirdtStep: showErrorFromThirdtStep == freezed
          ? _value.showErrorFromThirdtStep
          : showErrorFromThirdtStep // ignore: cast_nullable_to_non_nullable
              as bool,
      lookingWork: lookingWork == freezed
          ? _value.lookingWork
          : lookingWork // ignore: cast_nullable_to_non_nullable
              as String,
      desiredJob: desiredJob == freezed
          ? _value.desiredJob
          : desiredJob // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      salaryRange: salaryRange == freezed
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as int,
      receiveNotificationFromCompanies: receiveNotificationFromCompanies ==
              freezed
          ? _value.receiveNotificationFromCompanies
          : receiveNotificationFromCompanies // ignore: cast_nullable_to_non_nullable
              as bool,
      disponibilityToTravel: disponibilityToTravel == freezed
          ? _value.disponibilityToTravel
          : disponibilityToTravel // ignore: cast_nullable_to_non_nullable
              as bool,
      workRemote: workRemote == freezed
          ? _value.workRemote
          : workRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      immediateIncorporation: immediateIncorporation == freezed
          ? _value.immediateIncorporation
          : immediateIncorporation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThirdStepState extends _ThirdStepState {
  const _$_ThirdStepState(
      {required this.showErrorFromThirdtStep,
      required this.lookingWork,
      required this.desiredJob,
      required this.location,
      required this.salaryRange,
      required this.receiveNotificationFromCompanies,
      required this.disponibilityToTravel,
      required this.workRemote,
      required this.immediateIncorporation})
      : super._();

  @override
  final bool showErrorFromThirdtStep;
  @override
  final String lookingWork;
  @override
  final String desiredJob;
  @override
  final String location;
  @override
  final int salaryRange;
  @override
  final bool receiveNotificationFromCompanies;
  @override
  final bool disponibilityToTravel;
  @override
  final bool workRemote;
  @override
  final bool immediateIncorporation;

  @override
  String toString() {
    return 'ThirdStepState(showErrorFromThirdtStep: $showErrorFromThirdtStep, lookingWork: $lookingWork, desiredJob: $desiredJob, location: $location, salaryRange: $salaryRange, receiveNotificationFromCompanies: $receiveNotificationFromCompanies, disponibilityToTravel: $disponibilityToTravel, workRemote: $workRemote, immediateIncorporation: $immediateIncorporation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThirdStepState &&
            (identical(
                    other.showErrorFromThirdtStep, showErrorFromThirdtStep) ||
                const DeepCollectionEquality().equals(
                    other.showErrorFromThirdtStep, showErrorFromThirdtStep)) &&
            (identical(other.lookingWork, lookingWork) ||
                const DeepCollectionEquality()
                    .equals(other.lookingWork, lookingWork)) &&
            (identical(other.desiredJob, desiredJob) ||
                const DeepCollectionEquality()
                    .equals(other.desiredJob, desiredJob)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.salaryRange, salaryRange) ||
                const DeepCollectionEquality()
                    .equals(other.salaryRange, salaryRange)) &&
            (identical(other.receiveNotificationFromCompanies,
                    receiveNotificationFromCompanies) ||
                const DeepCollectionEquality().equals(
                    other.receiveNotificationFromCompanies,
                    receiveNotificationFromCompanies)) &&
            (identical(other.disponibilityToTravel, disponibilityToTravel) ||
                const DeepCollectionEquality().equals(
                    other.disponibilityToTravel, disponibilityToTravel)) &&
            (identical(other.workRemote, workRemote) ||
                const DeepCollectionEquality()
                    .equals(other.workRemote, workRemote)) &&
            (identical(other.immediateIncorporation, immediateIncorporation) ||
                const DeepCollectionEquality().equals(
                    other.immediateIncorporation, immediateIncorporation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showErrorFromThirdtStep) ^
      const DeepCollectionEquality().hash(lookingWork) ^
      const DeepCollectionEquality().hash(desiredJob) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(salaryRange) ^
      const DeepCollectionEquality().hash(receiveNotificationFromCompanies) ^
      const DeepCollectionEquality().hash(disponibilityToTravel) ^
      const DeepCollectionEquality().hash(workRemote) ^
      const DeepCollectionEquality().hash(immediateIncorporation);

  @JsonKey(ignore: true)
  @override
  _$ThirdStepStateCopyWith<_ThirdStepState> get copyWith =>
      __$ThirdStepStateCopyWithImpl<_ThirdStepState>(this, _$identity);
}

abstract class _ThirdStepState extends ThirdStepState {
  const factory _ThirdStepState(
      {required bool showErrorFromThirdtStep,
      required String lookingWork,
      required String desiredJob,
      required String location,
      required int salaryRange,
      required bool receiveNotificationFromCompanies,
      required bool disponibilityToTravel,
      required bool workRemote,
      required bool immediateIncorporation}) = _$_ThirdStepState;
  const _ThirdStepState._() : super._();

  @override
  bool get showErrorFromThirdtStep => throw _privateConstructorUsedError;
  @override
  String get lookingWork => throw _privateConstructorUsedError;
  @override
  String get desiredJob => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  int get salaryRange => throw _privateConstructorUsedError;
  @override
  bool get receiveNotificationFromCompanies =>
      throw _privateConstructorUsedError;
  @override
  bool get disponibilityToTravel => throw _privateConstructorUsedError;
  @override
  bool get workRemote => throw _privateConstructorUsedError;
  @override
  bool get immediateIncorporation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThirdStepStateCopyWith<_ThirdStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FourthStepStateTearOff {
  const _$FourthStepStateTearOff();

  _FourthStepState call(BuiltSet<String> stacks) {
    return _FourthStepState(
      stacks,
    );
  }
}

/// @nodoc
const $FourthStepState = _$FourthStepStateTearOff();

/// @nodoc
mixin _$FourthStepState {
  BuiltSet<String> get stacks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FourthStepStateCopyWith<FourthStepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FourthStepStateCopyWith<$Res> {
  factory $FourthStepStateCopyWith(
          FourthStepState value, $Res Function(FourthStepState) then) =
      _$FourthStepStateCopyWithImpl<$Res>;
  $Res call({BuiltSet<String> stacks});
}

/// @nodoc
class _$FourthStepStateCopyWithImpl<$Res>
    implements $FourthStepStateCopyWith<$Res> {
  _$FourthStepStateCopyWithImpl(this._value, this._then);

  final FourthStepState _value;
  // ignore: unused_field
  final $Res Function(FourthStepState) _then;

  @override
  $Res call({
    Object? stacks = freezed,
  }) {
    return _then(_value.copyWith(
      stacks: stacks == freezed
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as BuiltSet<String>,
    ));
  }
}

/// @nodoc
abstract class _$FourthStepStateCopyWith<$Res>
    implements $FourthStepStateCopyWith<$Res> {
  factory _$FourthStepStateCopyWith(
          _FourthStepState value, $Res Function(_FourthStepState) then) =
      __$FourthStepStateCopyWithImpl<$Res>;
  @override
  $Res call({BuiltSet<String> stacks});
}

/// @nodoc
class __$FourthStepStateCopyWithImpl<$Res>
    extends _$FourthStepStateCopyWithImpl<$Res>
    implements _$FourthStepStateCopyWith<$Res> {
  __$FourthStepStateCopyWithImpl(
      _FourthStepState _value, $Res Function(_FourthStepState) _then)
      : super(_value, (v) => _then(v as _FourthStepState));

  @override
  _FourthStepState get _value => super._value as _FourthStepState;

  @override
  $Res call({
    Object? stacks = freezed,
  }) {
    return _then(_FourthStepState(
      stacks == freezed
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as BuiltSet<String>,
    ));
  }
}

/// @nodoc

class _$_FourthStepState implements _FourthStepState {
  const _$_FourthStepState(this.stacks);

  @override
  final BuiltSet<String> stacks;

  @override
  String toString() {
    return 'FourthStepState(stacks: $stacks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FourthStepState &&
            (identical(other.stacks, stacks) ||
                const DeepCollectionEquality().equals(other.stacks, stacks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stacks);

  @JsonKey(ignore: true)
  @override
  _$FourthStepStateCopyWith<_FourthStepState> get copyWith =>
      __$FourthStepStateCopyWithImpl<_FourthStepState>(this, _$identity);
}

abstract class _FourthStepState implements FourthStepState {
  const factory _FourthStepState(BuiltSet<String> stacks) = _$_FourthStepState;

  @override
  BuiltSet<String> get stacks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FourthStepStateCopyWith<_FourthStepState> get copyWith =>
      throw _privateConstructorUsedError;
}
