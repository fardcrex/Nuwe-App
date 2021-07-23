// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'succes_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFailureTearOff {
  const _$UserFailureTearOff();

  ErrorServer error(Object error) {
    return ErrorServer(
      error,
    );
  }

  EmailNotVerified emailNotVerified() {
    return const EmailNotVerified();
  }

  EmailNotSended emailNotSend() {
    return const EmailNotSended();
  }
}

/// @nodoc
const $UserFailure = _$UserFailureTearOff();

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) error,
    required TResult Function() emailNotVerified,
    required TResult Function() emailNotSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? error,
    TResult Function()? emailNotVerified,
    TResult Function()? emailNotSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorServer value) error,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(EmailNotSended value) emailNotSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorServer value)? error,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(EmailNotSended value)? emailNotSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

/// @nodoc
abstract class $ErrorServerCopyWith<$Res> {
  factory $ErrorServerCopyWith(
          ErrorServer value, $Res Function(ErrorServer) then) =
      _$ErrorServerCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ErrorServerCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements $ErrorServerCopyWith<$Res> {
  _$ErrorServerCopyWithImpl(
      ErrorServer _value, $Res Function(ErrorServer) _then)
      : super(_value, (v) => _then(v as ErrorServer));

  @override
  ErrorServer get _value => super._value as ErrorServer;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorServer(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$ErrorServer implements ErrorServer {
  const _$ErrorServer(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'UserFailure.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorServer &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorServerCopyWith<ErrorServer> get copyWith =>
      _$ErrorServerCopyWithImpl<ErrorServer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) error,
    required TResult Function() emailNotVerified,
    required TResult Function() emailNotSend,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? error,
    TResult Function()? emailNotVerified,
    TResult Function()? emailNotSend,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorServer value) error,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(EmailNotSended value) emailNotSend,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorServer value)? error,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(EmailNotSended value)? emailNotSend,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorServer implements UserFailure {
  const factory ErrorServer(Object error) = _$ErrorServer;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorServerCopyWith<ErrorServer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailNotVerifiedCopyWith<$Res> {
  factory $EmailNotVerifiedCopyWith(
          EmailNotVerified value, $Res Function(EmailNotVerified) then) =
      _$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotVerifiedCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
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
    return 'UserFailure.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) error,
    required TResult Function() emailNotVerified,
    required TResult Function() emailNotSend,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? error,
    TResult Function()? emailNotVerified,
    TResult Function()? emailNotSend,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorServer value) error,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(EmailNotSended value) emailNotSend,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorServer value)? error,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(EmailNotSended value)? emailNotSend,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class EmailNotVerified implements UserFailure {
  const factory EmailNotVerified() = _$EmailNotVerified;
}

/// @nodoc
abstract class $EmailNotSendedCopyWith<$Res> {
  factory $EmailNotSendedCopyWith(
          EmailNotSended value, $Res Function(EmailNotSended) then) =
      _$EmailNotSendedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotSendedCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements $EmailNotSendedCopyWith<$Res> {
  _$EmailNotSendedCopyWithImpl(
      EmailNotSended _value, $Res Function(EmailNotSended) _then)
      : super(_value, (v) => _then(v as EmailNotSended));

  @override
  EmailNotSended get _value => super._value as EmailNotSended;
}

/// @nodoc

class _$EmailNotSended implements EmailNotSended {
  const _$EmailNotSended();

  @override
  String toString() {
    return 'UserFailure.emailNotSend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotSended);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) error,
    required TResult Function() emailNotVerified,
    required TResult Function() emailNotSend,
  }) {
    return emailNotSend();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? error,
    TResult Function()? emailNotVerified,
    TResult Function()? emailNotSend,
    required TResult orElse(),
  }) {
    if (emailNotSend != null) {
      return emailNotSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorServer value) error,
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(EmailNotSended value) emailNotSend,
  }) {
    return emailNotSend(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorServer value)? error,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(EmailNotSended value)? emailNotSend,
    required TResult orElse(),
  }) {
    if (emailNotSend != null) {
      return emailNotSend(this);
    }
    return orElse();
  }
}

abstract class EmailNotSended implements UserFailure {
  const factory EmailNotSended() = _$EmailNotSended;
}

/// @nodoc
class _$UserSuccessTearOff {
  const _$UserSuccessTearOff();

  EmptySuccess empty() {
    return const EmptySuccess();
  }

  EmailSended emailSended() {
    return const EmailSended();
  }
}

/// @nodoc
const $UserSuccess = _$UserSuccessTearOff();

/// @nodoc
mixin _$UserSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() emailSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? emailSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySuccess value) empty,
    required TResult Function(EmailSended value) emailSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySuccess value)? empty,
    TResult Function(EmailSended value)? emailSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSuccessCopyWith<$Res> {
  factory $UserSuccessCopyWith(
          UserSuccess value, $Res Function(UserSuccess) then) =
      _$UserSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSuccessCopyWithImpl<$Res> implements $UserSuccessCopyWith<$Res> {
  _$UserSuccessCopyWithImpl(this._value, this._then);

  final UserSuccess _value;
  // ignore: unused_field
  final $Res Function(UserSuccess) _then;
}

/// @nodoc
abstract class $EmptySuccessCopyWith<$Res> {
  factory $EmptySuccessCopyWith(
          EmptySuccess value, $Res Function(EmptySuccess) then) =
      _$EmptySuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptySuccessCopyWithImpl<$Res> extends _$UserSuccessCopyWithImpl<$Res>
    implements $EmptySuccessCopyWith<$Res> {
  _$EmptySuccessCopyWithImpl(
      EmptySuccess _value, $Res Function(EmptySuccess) _then)
      : super(_value, (v) => _then(v as EmptySuccess));

  @override
  EmptySuccess get _value => super._value as EmptySuccess;
}

/// @nodoc

class _$EmptySuccess implements EmptySuccess {
  const _$EmptySuccess();

  @override
  String toString() {
    return 'UserSuccess.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptySuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() emailSended,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? emailSended,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySuccess value) empty,
    required TResult Function(EmailSended value) emailSended,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySuccess value)? empty,
    TResult Function(EmailSended value)? emailSended,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptySuccess implements UserSuccess {
  const factory EmptySuccess() = _$EmptySuccess;
}

/// @nodoc
abstract class $EmailSendedCopyWith<$Res> {
  factory $EmailSendedCopyWith(
          EmailSended value, $Res Function(EmailSended) then) =
      _$EmailSendedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailSendedCopyWithImpl<$Res> extends _$UserSuccessCopyWithImpl<$Res>
    implements $EmailSendedCopyWith<$Res> {
  _$EmailSendedCopyWithImpl(
      EmailSended _value, $Res Function(EmailSended) _then)
      : super(_value, (v) => _then(v as EmailSended));

  @override
  EmailSended get _value => super._value as EmailSended;
}

/// @nodoc

class _$EmailSended implements EmailSended {
  const _$EmailSended();

  @override
  String toString() {
    return 'UserSuccess.emailSended()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailSended);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() emailSended,
  }) {
    return emailSended();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? emailSended,
    required TResult orElse(),
  }) {
    if (emailSended != null) {
      return emailSended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptySuccess value) empty,
    required TResult Function(EmailSended value) emailSended,
  }) {
    return emailSended(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptySuccess value)? empty,
    TResult Function(EmailSended value)? emailSended,
    required TResult orElse(),
  }) {
    if (emailSended != null) {
      return emailSended(this);
    }
    return orElse();
  }
}

abstract class EmailSended implements UserSuccess {
  const factory EmailSended() = _$EmailSended;
}
