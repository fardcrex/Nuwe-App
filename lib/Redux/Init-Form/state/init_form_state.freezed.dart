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

  _InitFormState call({required StepForm stepForm}) {
    return _InitFormState(
      stepForm: stepForm,
    );
  }
}

/// @nodoc
const $InitFormState = _$InitFormStateTearOff();

/// @nodoc
mixin _$InitFormState {
  StepForm get stepForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitFormStateCopyWith<InitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitFormStateCopyWith<$Res> {
  factory $InitFormStateCopyWith(
          InitFormState value, $Res Function(InitFormState) then) =
      _$InitFormStateCopyWithImpl<$Res>;
  $Res call({StepForm stepForm});
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
  }) {
    return _then(_value.copyWith(
      stepForm: stepForm == freezed
          ? _value.stepForm
          : stepForm // ignore: cast_nullable_to_non_nullable
              as StepForm,
    ));
  }
}

/// @nodoc
abstract class _$InitFormStateCopyWith<$Res>
    implements $InitFormStateCopyWith<$Res> {
  factory _$InitFormStateCopyWith(
          _InitFormState value, $Res Function(_InitFormState) then) =
      __$InitFormStateCopyWithImpl<$Res>;
  @override
  $Res call({StepForm stepForm});
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
  }) {
    return _then(_InitFormState(
      stepForm: stepForm == freezed
          ? _value.stepForm
          : stepForm // ignore: cast_nullable_to_non_nullable
              as StepForm,
    ));
  }
}

/// @nodoc

class _$_InitFormState implements _InitFormState {
  const _$_InitFormState({required this.stepForm});

  @override
  final StepForm stepForm;

  @override
  String toString() {
    return 'InitFormState(stepForm: $stepForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitFormState &&
            (identical(other.stepForm, stepForm) ||
                const DeepCollectionEquality()
                    .equals(other.stepForm, stepForm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stepForm);

  @JsonKey(ignore: true)
  @override
  _$InitFormStateCopyWith<_InitFormState> get copyWith =>
      __$InitFormStateCopyWithImpl<_InitFormState>(this, _$identity);
}

abstract class _InitFormState implements InitFormState {
  const factory _InitFormState({required StepForm stepForm}) = _$_InitFormState;

  @override
  StepForm get stepForm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitFormStateCopyWith<_InitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
