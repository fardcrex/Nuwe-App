import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

class RegisterWithCredentials {
  final IAuthRepository _authRepository;

  RegisterWithCredentials(this._authRepository);

  Future<Either<AuthFailure, Unit>> call({
    required String nicknameStr,
    required String emailStr,
    required String namePersonStr,
    required String passwordStr,
    required String passwordConfirmStr,
  }) async {
    if (passwordStr != passwordConfirmStr) return left(const AuthFailure.diferentPasswords());

    final nickname = Nickname(nicknameStr);
    final password = Password(passwordStr);
    final namePerson = NamePerson(namePersonStr);
    final emailAddress = EmailAddress(emailStr);

    final validate = _validateCredentials(password);

    if (validate.isLeft()) return validate;

    final result = await _authRepository.registerWithCredentials(
      emailAddress,
      password,
      namePerson,
      nickname,
    );

    return result.map((r) => unit);
  }

  Either<AuthFailure, Unit> _validateCredentials(Password password) {
    return password.value.fold(
      (l) => Left(AuthFailure.invalidPassword(l)),
      (_) => right(unit),
    );
  }
}
