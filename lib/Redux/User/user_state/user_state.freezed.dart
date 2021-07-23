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
class _$UserStateTearOff {
  const _$UserStateTearOff();

  UserData call({required User user}) {
    return UserData(
      user: user,
    );
  }

  UserStateLoading loading() {
    return const UserStateLoading();
  }

  EmailNotVerified emailNotVerified() {
    return const EmailNotVerified();
  }

  UserStateError error(Object error) {
    return UserStateError(
      error,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserData value) $default, {
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserStateLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(UserData _value, $Res Function(UserData) _then)
      : super(_value, (v) => _then(v as UserData));

  @override
  UserData get _value => super._value as UserData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserData implements UserData {
  const _$UserData({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'UserState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(Object error) error,
  }) {
    return $default(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(UserStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserStateLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UserData implements UserState {
  const factory UserData({required User user}) = _$UserData;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateLoadingCopyWith<$Res> {
  factory $UserStateLoadingCopyWith(
          UserStateLoading value, $Res Function(UserStateLoading) then) =
      _$UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateLoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserStateLoadingCopyWith<$Res> {
  _$UserStateLoadingCopyWithImpl(
      UserStateLoading _value, $Res Function(UserStateLoading) _then)
      : super(_value, (v) => _then(v as UserStateLoading));

  @override
  UserStateLoading get _value => super._value as UserStateLoading;
}

/// @nodoc

class _$UserStateLoading implements UserStateLoading {
  const _$UserStateLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserStateLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserState {
  const factory UserStateLoading() = _$UserStateLoading;
}

/// @nodoc
abstract class $EmailNotVerifiedCopyWith<$Res> {
  factory $EmailNotVerifiedCopyWith(
          EmailNotVerified value, $Res Function(EmailNotVerified) then) =
      _$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotVerifiedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.emailNotVerified()';
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
    TResult Function(User user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(Object error) error,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(UserStateError value) error,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserStateLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class EmailNotVerified implements UserState {
  const factory EmailNotVerified() = _$EmailNotVerified;
}

/// @nodoc
abstract class $UserStateErrorCopyWith<$Res> {
  factory $UserStateErrorCopyWith(
          UserStateError value, $Res Function(UserStateError) then) =
      _$UserStateErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UserStateErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
    return 'UserState.error(error: $error)';
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
    TResult Function(User user) $default, {
    required TResult Function() loading,
    required TResult Function() emailNotVerified,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function()? loading,
    TResult Function()? emailNotVerified,
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
    TResult Function(UserData value) $default, {
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(UserStateLoading value)? loading,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserState {
  const factory UserStateError(Object error) = _$UserStateError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateErrorCopyWith<UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
