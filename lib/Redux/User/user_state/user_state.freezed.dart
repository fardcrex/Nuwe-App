// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStatesTearOff {
  const _$UserStatesTearOff();

  UserState call({required UserData user}) {
    return UserState(
      user: user,
    );
  }

  UserStatesLoading loading() {
    return const UserStatesLoading();
  }

  EmailNotVerified emailNotVerified() {
    return const EmailNotVerified();
  }

  NotCreateUserInformation notCreateUserInformation(
      IsNotCreateInformation userBasic) {
    return NotCreateUserInformation(
      userBasic,
    );
  }

  UserStateError error(Object error) {
    return UserStateError(
      error,
    );
  }
}

/// @nodoc
const $UserStates = _$UserStatesTearOff();

/// @nodoc
mixin _$UserStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(IsNotCreateInformation userBasic)
        notCreateUserInformation,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(IsNotCreateInformation userBasic)?
        notCreateUserInformation,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserState value) $default, {
    required TResult Function(UserStatesLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(NotCreateUserInformation value)
        notCreateUserInformation,
    required TResult Function(UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserState value)? $default, {
    TResult Function(UserStatesLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(NotCreateUserInformation value)? notCreateUserInformation,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatesCopyWith<$Res> {
  factory $UserStatesCopyWith(
          UserStates value, $Res Function(UserStates) then) =
      _$UserStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStatesCopyWithImpl<$Res> implements $UserStatesCopyWith<$Res> {
  _$UserStatesCopyWithImpl(this._value, this._then);

  final UserStates _value;
  // ignore: unused_field
  final $Res Function(UserStates) _then;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({UserData user});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> extends _$UserStatesCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(UserState _value, $Res Function(UserState) _then)
      : super(_value, (v) => _then(v as UserState));

  @override
  UserState get _value => super._value as UserState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$UserState implements UserState {
  const _$UserState({required this.user});

  @override
  final UserData user;

  @override
  String toString() {
    return 'UserStates(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserStateCopyWith<UserState> get copyWith =>
      _$UserStateCopyWithImpl<UserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(IsNotCreateInformation userBasic)
        notCreateUserInformation,
    required TResult Function(Object error) error,
  }) {
    return $default(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(IsNotCreateInformation userBasic)?
        notCreateUserInformation,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserState value) $default, {
    required TResult Function(UserStatesLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(NotCreateUserInformation value)
        notCreateUserInformation,
    required TResult Function(UserStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserState value)? $default, {
    TResult Function(UserStatesLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(NotCreateUserInformation value)? notCreateUserInformation,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UserState implements UserStates {
  const factory UserState({required UserData user}) = _$UserState;

  UserData get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatesLoadingCopyWith<$Res> {
  factory $UserStatesLoadingCopyWith(
          UserStatesLoading value, $Res Function(UserStatesLoading) then) =
      _$UserStatesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStatesLoadingCopyWithImpl<$Res>
    extends _$UserStatesCopyWithImpl<$Res>
    implements $UserStatesLoadingCopyWith<$Res> {
  _$UserStatesLoadingCopyWithImpl(
      UserStatesLoading _value, $Res Function(UserStatesLoading) _then)
      : super(_value, (v) => _then(v as UserStatesLoading));

  @override
  UserStatesLoading get _value => super._value as UserStatesLoading;
}

/// @nodoc

class _$UserStatesLoading implements UserStatesLoading {
  const _$UserStatesLoading();

  @override
  String toString() {
    return 'UserStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserStatesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(IsNotCreateInformation userBasic)
        notCreateUserInformation,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(IsNotCreateInformation userBasic)?
        notCreateUserInformation,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserState value) $default, {
    required TResult Function(UserStatesLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(NotCreateUserInformation value)
        notCreateUserInformation,
    required TResult Function(UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserState value)? $default, {
    TResult Function(UserStatesLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(NotCreateUserInformation value)? notCreateUserInformation,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStatesLoading implements UserStates {
  const factory UserStatesLoading() = _$UserStatesLoading;
}

/// @nodoc
abstract class $EmailNotVerifiedCopyWith<$Res> {
  factory $EmailNotVerifiedCopyWith(
          EmailNotVerified value, $Res Function(EmailNotVerified) then) =
      _$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotVerifiedCopyWithImpl<$Res>
    extends _$UserStatesCopyWithImpl<$Res>
    implements $EmailNotVerifiedCopyWith<$Res> {
  _$EmailNotVerifiedCopyWithImpl(
      EmailNotVerified _value, $Res Function(EmailNotVerified) _then)
      : super(_value, (v) => _then(v as EmailNotVerified));

  @override
  EmailNotVerified get _value => super._value as EmailNotVerified;
}

/// @nodoc

class _$EmailNotVerified implements EmailNotVerified {
  const _$EmailNotVerified();

  @override
  String toString() {
    return 'UserStates.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(IsNotCreateInformation userBasic)
        notCreateUserInformation,
    required TResult Function(Object error) error,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(IsNotCreateInformation userBasic)?
        notCreateUserInformation,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserState value) $default, {
    required TResult Function(UserStatesLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(NotCreateUserInformation value)
        notCreateUserInformation,
    required TResult Function(UserStateError value) error,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserState value)? $default, {
    TResult Function(UserStatesLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(NotCreateUserInformation value)? notCreateUserInformation,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class EmailNotVerified implements UserStates {
  const factory EmailNotVerified() = _$EmailNotVerified;
}

/// @nodoc
abstract class $NotCreateUserInformationCopyWith<$Res> {
  factory $NotCreateUserInformationCopyWith(NotCreateUserInformation value,
          $Res Function(NotCreateUserInformation) then) =
      _$NotCreateUserInformationCopyWithImpl<$Res>;
  $Res call({IsNotCreateInformation userBasic});
}

/// @nodoc
class _$NotCreateUserInformationCopyWithImpl<$Res>
    extends _$UserStatesCopyWithImpl<$Res>
    implements $NotCreateUserInformationCopyWith<$Res> {
  _$NotCreateUserInformationCopyWithImpl(NotCreateUserInformation _value,
      $Res Function(NotCreateUserInformation) _then)
      : super(_value, (v) => _then(v as NotCreateUserInformation));

  @override
  NotCreateUserInformation get _value =>
      super._value as NotCreateUserInformation;

  @override
  $Res call({
    Object? userBasic = freezed,
  }) {
    return _then(NotCreateUserInformation(
      userBasic == freezed
          ? _value.userBasic
          : userBasic // ignore: cast_nullable_to_non_nullable
              as IsNotCreateInformation,
    ));
  }
}

/// @nodoc

class _$NotCreateUserInformation implements NotCreateUserInformation {
  const _$NotCreateUserInformation(this.userBasic);

  @override
  final IsNotCreateInformation userBasic;

  @override
  String toString() {
    return 'UserStates.notCreateUserInformation(userBasic: $userBasic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotCreateUserInformation &&
            (identical(other.userBasic, userBasic) ||
                const DeepCollectionEquality()
                    .equals(other.userBasic, userBasic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userBasic);

  @JsonKey(ignore: true)
  @override
  $NotCreateUserInformationCopyWith<NotCreateUserInformation> get copyWith =>
      _$NotCreateUserInformationCopyWithImpl<NotCreateUserInformation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(IsNotCreateInformation userBasic)
        notCreateUserInformation,
    required TResult Function(Object error) error,
  }) {
    return notCreateUserInformation(userBasic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(IsNotCreateInformation userBasic)?
        notCreateUserInformation,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (notCreateUserInformation != null) {
      return notCreateUserInformation(userBasic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserState value) $default, {
    required TResult Function(UserStatesLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(NotCreateUserInformation value)
        notCreateUserInformation,
    required TResult Function(UserStateError value) error,
  }) {
    return notCreateUserInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserState value)? $default, {
    TResult Function(UserStatesLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(NotCreateUserInformation value)? notCreateUserInformation,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (notCreateUserInformation != null) {
      return notCreateUserInformation(this);
    }
    return orElse();
  }
}

abstract class NotCreateUserInformation implements UserStates {
  const factory NotCreateUserInformation(IsNotCreateInformation userBasic) =
      _$NotCreateUserInformation;

  IsNotCreateInformation get userBasic => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotCreateUserInformationCopyWith<NotCreateUserInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateErrorCopyWith<$Res> {
  factory $UserStateErrorCopyWith(
          UserStateError value, $Res Function(UserStateError) then) =
      _$UserStateErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UserStateErrorCopyWithImpl<$Res> extends _$UserStatesCopyWithImpl<$Res>
    implements $UserStateErrorCopyWith<$Res> {
  _$UserStateErrorCopyWithImpl(
      UserStateError _value, $Res Function(UserStateError) _then)
      : super(_value, (v) => _then(v as UserStateError));

  @override
  UserStateError get _value => super._value as UserStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UserStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$UserStateError implements UserStateError {
  const _$UserStateError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'UserStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $UserStateErrorCopyWith<UserStateError> get copyWith =>
      _$UserStateErrorCopyWithImpl<UserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(IsNotCreateInformation userBasic)
        notCreateUserInformation,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(IsNotCreateInformation userBasic)?
        notCreateUserInformation,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserState value) $default, {
    required TResult Function(UserStatesLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(NotCreateUserInformation value)
        notCreateUserInformation,
    required TResult Function(UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserState value)? $default, {
    TResult Function(UserStatesLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(NotCreateUserInformation value)? notCreateUserInformation,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserStates {
  const factory UserStateError(Object error) = _$UserStateError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateErrorCopyWith<UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
