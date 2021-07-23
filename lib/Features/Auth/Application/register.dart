import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

class RegisterWithCredentials {
  Future<Either<AuthFailure, Unit>> call({
    required String nicknameStr,
    required String emailStr,
    required String namePersonStr,
    required String passwordStr,
    required String passwordConfirmStr,
  }) async {
    if (passwordStr != passwordConfirmStr) return left(const AuthFailure.diferentPasswords());

    final nicknameOrEmail = Nickname(nicknameStr);
    final password = Password(passwordStr);
    final namePerson = NamePerson(passwordStr);
    final emailAddress = EmailAddress(passwordStr);

    final validate = _validateCredentials(password);

    if (validate.isLeft()) return validate;

    await Future.delayed(const Duration(seconds: 2));
    return right(unit);
  }

  Either<AuthFailure, Unit> _validateCredentials(Password password) {
    if (!password.isValid()) {
      return password.value.fold((l) => Left(AuthFailure.invalidPassword(l)), (r) => right(unit));
    }
    return right(unit);
  }
}
