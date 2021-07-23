import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuwe/Features/Shared/Domain/failures.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.internalError() = InternalError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.emailNotExist() = EmailNotExist;
  const factory AuthFailure.accountDisabled() = AccountDisabled;
  const factory AuthFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;
  //
  const factory AuthFailure.invalidEmail(ValueFailure failure) = InvalidEmail;
  const factory AuthFailure.invalidEmailOrNickname(ValueFailure failure) = InvalidEmailOrNickname;
  const factory AuthFailure.invalidNickname(ValueFailure failure) = InvalidNickname;
  const factory AuthFailure.invalidNamePerson(ValueFailure failure) = InvalidNamePerson;
  const factory AuthFailure.invalidPassword(ValueFailure failure) = InvalidPassword;
  const factory AuthFailure.invalidAnyCredentials() = InvalidAnyCredentials;
  const factory AuthFailure.diferentPasswords() = DiferentPasswords;
}
//flutter pub run build_runner watch --delete-conflicting-outputs
