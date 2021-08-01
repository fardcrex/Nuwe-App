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
      {required StepForm stepForm, required FirstStepState firstStepState}) {
    return _InitFormState(
      stepForm: stepForm,
      firstStepState: firstStepState,
    );
  }
}

/// @nodoc
const $InitFormState = _$InitFormStateTearOff();

/// @nodoc
mixin _$InitFormState {
  StepForm get stepForm => throw _privateConstructorUsedError;
  FirstStepState get firstStepState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitFormStateCopyWith<InitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitFormStateCopyWith<$Res> {
  factory $InitFormStateCopyWith(
          InitFormState value, $Res Function(InitFormState) then) =
      _$InitFormStateCopyWithImpl<$Res>;
  $Res call({StepForm stepForm, FirstStepState firstStepState});

  $FirstStepStateCopyWith<$Res> get firstStepState;
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
    ));
  }

  @override
  $FirstStepStateCopyWith<$Res> get firstStepState {
    return $FirstStepStateCopyWith<$Res>(_value.firstStepState, (value) {
      return _then(_value.copyWith(firstStepState: value));
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
  $Res call({StepForm stepForm, FirstStepState firstStepState});

  @override
  $FirstStepStateCopyWith<$Res> get firstStepState;
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
    ));
  }
}

/// @nodoc

class _$_InitFormState implements _InitFormState {
  const _$_InitFormState(
      {required this.stepForm, required this.firstStepState});

  @override
  final StepForm stepForm;
  @override
  final FirstStepState firstStepState;

  @override
  String toString() {
    return 'InitFormState(stepForm: $stepForm, firstStepState: $firstStepState)';
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
                    .equals(other.firstStepState, firstStepState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stepForm) ^
      const DeepCollectionEquality().hash(firstStepState);

  @JsonKey(ignore: true)
  @override
  _$InitFormStateCopyWith<_InitFormState> get copyWith =>
      __$InitFormStateCopyWithImpl<_InitFormState>(this, _$identity);
}

abstract class _InitFormState implements InitFormState {
  const factory _InitFormState(
      {required StepForm stepForm,
      required FirstStepState firstStepState}) = _$_InitFormState;

  @override
  StepForm get stepForm => throw _privateConstructorUsedError;
  @override
  FirstStepState get firstStepState => throw _privateConstructorUsedError;
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
