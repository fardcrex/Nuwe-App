// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  CharacterLimitExceeded<T> characterLimitExceeded<T>(
      {required T failedValue}) {
    return CharacterLimitExceeded<T>(
      failedValue: failedValue,
    );
  }

  ShortCharacters<T> shortCharacters<T>({required T failedValue}) {
    return ShortCharacters<T>(
      failedValue: failedValue,
    );
  }

  InvalidFormat<T> invalidFormat<T>({required T failedValue}) {
    return InvalidFormat<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) characterLimitExceeded,
    required TResult Function(T failedValue) shortCharacters,
    required TResult Function(T failedValue) invalidFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? characterLimitExceeded,
    TResult Function(T failedValue)? shortCharacters,
    TResult Function(T failedValue)? invalidFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLimitExceeded<T> value)
        characterLimitExceeded,
    required TResult Function(ShortCharacters<T> value) shortCharacters,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLimitExceeded<T> value)? characterLimitExceeded,
    TResult Function(ShortCharacters<T> value)? shortCharacters,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $CharacterLimitExceededCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $CharacterLimitExceededCopyWith(CharacterLimitExceeded<T> value,
          $Res Function(CharacterLimitExceeded<T>) then) =
      _$CharacterLimitExceededCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$CharacterLimitExceededCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $CharacterLimitExceededCopyWith<T, $Res> {
  _$CharacterLimitExceededCopyWithImpl(CharacterLimitExceeded<T> _value,
      $Res Function(CharacterLimitExceeded<T>) _then)
      : super(_value, (v) => _then(v as CharacterLimitExceeded<T>));

  @override
  CharacterLimitExceeded<T> get _value =>
      super._value as CharacterLimitExceeded<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(CharacterLimitExceeded<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CharacterLimitExceeded<T> implements CharacterLimitExceeded<T> {
  const _$CharacterLimitExceeded({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.characterLimitExceeded(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CharacterLimitExceeded<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $CharacterLimitExceededCopyWith<T, CharacterLimitExceeded<T>> get copyWith =>
      _$CharacterLimitExceededCopyWithImpl<T, CharacterLimitExceeded<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) characterLimitExceeded,
    required TResult Function(T failedValue) shortCharacters,
    required TResult Function(T failedValue) invalidFormat,
  }) {
    return characterLimitExceeded(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? characterLimitExceeded,
    TResult Function(T failedValue)? shortCharacters,
    TResult Function(T failedValue)? invalidFormat,
    required TResult orElse(),
  }) {
    if (characterLimitExceeded != null) {
      return characterLimitExceeded(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLimitExceeded<T> value)
        characterLimitExceeded,
    required TResult Function(ShortCharacters<T> value) shortCharacters,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
  }) {
    return characterLimitExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLimitExceeded<T> value)? characterLimitExceeded,
    TResult Function(ShortCharacters<T> value)? shortCharacters,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    required TResult orElse(),
  }) {
    if (characterLimitExceeded != null) {
      return characterLimitExceeded(this);
    }
    return orElse();
  }
}

abstract class CharacterLimitExceeded<T> implements ValueFailure<T> {
  const factory CharacterLimitExceeded({required T failedValue}) =
      _$CharacterLimitExceeded<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CharacterLimitExceededCopyWith<T, CharacterLimitExceeded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortCharactersCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortCharactersCopyWith(
          ShortCharacters<T> value, $Res Function(ShortCharacters<T>) then) =
      _$ShortCharactersCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortCharactersCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortCharactersCopyWith<T, $Res> {
  _$ShortCharactersCopyWithImpl(
      ShortCharacters<T> _value, $Res Function(ShortCharacters<T>) _then)
      : super(_value, (v) => _then(v as ShortCharacters<T>));

  @override
  ShortCharacters<T> get _value => super._value as ShortCharacters<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortCharacters<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortCharacters<T> implements ShortCharacters<T> {
  const _$ShortCharacters({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortCharacters(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortCharacters<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortCharactersCopyWith<T, ShortCharacters<T>> get copyWith =>
      _$ShortCharactersCopyWithImpl<T, ShortCharacters<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) characterLimitExceeded,
    required TResult Function(T failedValue) shortCharacters,
    required TResult Function(T failedValue) invalidFormat,
  }) {
    return shortCharacters(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? characterLimitExceeded,
    TResult Function(T failedValue)? shortCharacters,
    TResult Function(T failedValue)? invalidFormat,
    required TResult orElse(),
  }) {
    if (shortCharacters != null) {
      return shortCharacters(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLimitExceeded<T> value)
        characterLimitExceeded,
    required TResult Function(ShortCharacters<T> value) shortCharacters,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
  }) {
    return shortCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLimitExceeded<T> value)? characterLimitExceeded,
    TResult Function(ShortCharacters<T> value)? shortCharacters,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    required TResult orElse(),
  }) {
    if (shortCharacters != null) {
      return shortCharacters(this);
    }
    return orElse();
  }
}

abstract class ShortCharacters<T> implements ValueFailure<T> {
  const factory ShortCharacters({required T failedValue}) =
      _$ShortCharacters<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortCharactersCopyWith<T, ShortCharacters<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidFormatCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidFormatCopyWith(
          InvalidFormat<T> value, $Res Function(InvalidFormat<T>) then) =
      _$InvalidFormatCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidFormatCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidFormatCopyWith<T, $Res> {
  _$InvalidFormatCopyWithImpl(
      InvalidFormat<T> _value, $Res Function(InvalidFormat<T>) _then)
      : super(_value, (v) => _then(v as InvalidFormat<T>));

  @override
  InvalidFormat<T> get _value => super._value as InvalidFormat<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidFormat<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidFormat<T> implements InvalidFormat<T> {
  const _$InvalidFormat({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidFormat(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidFormat<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidFormatCopyWith<T, InvalidFormat<T>> get copyWith =>
      _$InvalidFormatCopyWithImpl<T, InvalidFormat<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) characterLimitExceeded,
    required TResult Function(T failedValue) shortCharacters,
    required TResult Function(T failedValue) invalidFormat,
  }) {
    return invalidFormat(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? characterLimitExceeded,
    TResult Function(T failedValue)? shortCharacters,
    TResult Function(T failedValue)? invalidFormat,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLimitExceeded<T> value)
        characterLimitExceeded,
    required TResult Function(ShortCharacters<T> value) shortCharacters,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLimitExceeded<T> value)? characterLimitExceeded,
    TResult Function(ShortCharacters<T> value)? shortCharacters,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidFormat<T> implements ValueFailure<T> {
  const factory InvalidFormat({required T failedValue}) = _$InvalidFormat<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidFormatCopyWith<T, InvalidFormat<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
