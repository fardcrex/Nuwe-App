// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }

  InternalError internalError() {
    return const InternalError();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  EmailNotExist emailNotExist() {
    return const EmailNotExist();
  }

  AccountDisabled accountDisabled() {
    return const AccountDisabled();
  }

  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

  InvalidEmail invalidEmail(ValueFailure<dynamic> failure) {
    return InvalidEmail(
      failure,
    );
  }

  InvalidPassword invalidPassword(ValueFailure<dynamic> failure) {
    return InvalidPassword(
      failure,
    );
  }

  InvalidAnyCredentials invalidAnyCredentials() {
    return const InvalidAnyCredentials();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InternalErrorCopyWith<$Res> {
  factory $InternalErrorCopyWith(
          InternalError value, $Res Function(InternalError) then) =
      _$InternalErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InternalErrorCopyWith<$Res> {
  _$InternalErrorCopyWithImpl(
      InternalError _value, $Res Function(InternalError) _then)
      : super(_value, (v) => _then(v as InternalError));

  @override
  InternalError get _value => super._value as InternalError;
}

/// @nodoc

class _$InternalError implements InternalError {
  const _$InternalError();

  @override
  String toString() {
    return 'AuthFailure.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements AuthFailure {
  const factory InternalError() = _$InternalError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $EmailNotExistCopyWith<$Res> {
  factory $EmailNotExistCopyWith(
          EmailNotExist value, $Res Function(EmailNotExist) then) =
      _$EmailNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotExistCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailNotExistCopyWith<$Res> {
  _$EmailNotExistCopyWithImpl(
      EmailNotExist _value, $Res Function(EmailNotExist) _then)
      : super(_value, (v) => _then(v as EmailNotExist));

  @override
  EmailNotExist get _value => super._value as EmailNotExist;
}

/// @nodoc

class _$EmailNotExist implements EmailNotExist {
  const _$EmailNotExist();

  @override
  String toString() {
    return 'AuthFailure.emailNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return emailNotExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (emailNotExist != null) {
      return emailNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return emailNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (emailNotExist != null) {
      return emailNotExist(this);
    }
    return orElse();
  }
}

abstract class EmailNotExist implements AuthFailure {
  const factory EmailNotExist() = _$EmailNotExist;
}

/// @nodoc
abstract class $AccountDisabledCopyWith<$Res> {
  factory $AccountDisabledCopyWith(
          AccountDisabled value, $Res Function(AccountDisabled) then) =
      _$AccountDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountDisabledCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AccountDisabledCopyWith<$Res> {
  _$AccountDisabledCopyWithImpl(
      AccountDisabled _value, $Res Function(AccountDisabled) _then)
      : super(_value, (v) => _then(v as AccountDisabled));

  @override
  AccountDisabled get _value => super._value as AccountDisabled;
}

/// @nodoc

class _$AccountDisabled implements AccountDisabled {
  const _$AccountDisabled();

  @override
  String toString() {
    return 'AuthFailure.accountDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return accountDisabled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (accountDisabled != null) {
      return accountDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return accountDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (accountDisabled != null) {
      return accountDisabled(this);
    }
    return orElse();
  }
}

abstract class AccountDisabled implements AuthFailure {
  const factory AccountDisabled() = _$AccountDisabled;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
  $Res call({ValueFailure<dynamic> failure});

  $ValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(InvalidEmail(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<dynamic>,
    ));
  }

  @override
  $ValueFailureCopyWith<dynamic, $Res> get failure {
    return $ValueFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail(this.failure);

  @override
  final ValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'AuthFailure.invalidEmail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      _$InvalidEmailCopyWithImpl<InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return invalidEmail(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail(ValueFailure<dynamic> failure) = _$InvalidEmail;

  ValueFailure<dynamic> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<$Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword value, $Res Function(InvalidPassword) then) =
      _$InvalidPasswordCopyWithImpl<$Res>;
  $Res call({ValueFailure<dynamic> failure});

  $ValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPasswordCopyWith<$Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword _value, $Res Function(InvalidPassword) _then)
      : super(_value, (v) => _then(v as InvalidPassword));

  @override
  InvalidPassword get _value => super._value as InvalidPassword;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(InvalidPassword(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<dynamic>,
    ));
  }

  @override
  $ValueFailureCopyWith<dynamic, $Res> get failure {
    return $ValueFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$InvalidPassword implements InvalidPassword {
  const _$InvalidPassword(this.failure);

  @override
  final ValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'AuthFailure.invalidPassword(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<InvalidPassword> get copyWith =>
      _$InvalidPasswordCopyWithImpl<InvalidPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return invalidPassword(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword implements AuthFailure {
  const factory InvalidPassword(ValueFailure<dynamic> failure) =
      _$InvalidPassword;

  ValueFailure<dynamic> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<InvalidPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidAnyCredentialsCopyWith<$Res> {
  factory $InvalidAnyCredentialsCopyWith(InvalidAnyCredentials value,
          $Res Function(InvalidAnyCredentials) then) =
      _$InvalidAnyCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidAnyCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidAnyCredentialsCopyWith<$Res> {
  _$InvalidAnyCredentialsCopyWithImpl(
      InvalidAnyCredentials _value, $Res Function(InvalidAnyCredentials) _then)
      : super(_value, (v) => _then(v as InvalidAnyCredentials));

  @override
  InvalidAnyCredentials get _value => super._value as InvalidAnyCredentials;
}

/// @nodoc

class _$InvalidAnyCredentials implements InvalidAnyCredentials {
  const _$InvalidAnyCredentials();

  @override
  String toString() {
    return 'AuthFailure.invalidAnyCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidAnyCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() internalError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() emailNotExist,
    required TResult Function() accountDisabled,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function(ValueFailure<dynamic> failure) invalidEmail,
    required TResult Function(ValueFailure<dynamic> failure) invalidPassword,
    required TResult Function() invalidAnyCredentials,
  }) {
    return invalidAnyCredentials();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? internalError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? emailNotExist,
    TResult Function()? accountDisabled,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function(ValueFailure<dynamic> failure)? invalidEmail,
    TResult Function(ValueFailure<dynamic> failure)? invalidPassword,
    TResult Function()? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidAnyCredentials != null) {
      return invalidAnyCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InternalError value) internalError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(EmailNotExist value) emailNotExist,
    required TResult Function(AccountDisabled value) accountDisabled,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidPassword value) invalidPassword,
    required TResult Function(InvalidAnyCredentials value)
        invalidAnyCredentials,
  }) {
    return invalidAnyCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(InternalError value)? internalError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(EmailNotExist value)? emailNotExist,
    TResult Function(AccountDisabled value)? accountDisabled,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidPassword value)? invalidPassword,
    TResult Function(InvalidAnyCredentials value)? invalidAnyCredentials,
    required TResult orElse(),
  }) {
    if (invalidAnyCredentials != null) {
      return invalidAnyCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidAnyCredentials implements AuthFailure {
  const factory InvalidAnyCredentials() = _$InvalidAnyCredentials;
}
