import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';

class LoginWithCredentials {
  Future<Either<AuthFailure, Unit>> call({
    required String nicknameOrEmailStr,
    required String passwordStr,
  }) async {
    final nicknameOrEmail = NicknameOrEmail(nicknameOrEmailStr);
    final password = Password(passwordStr);

    final validate = _validateCredentials(nicknameOrEmail, password);
    await Future.delayed(const Duration(seconds: 2));

    if (validate.isLeft()) return validate;

    return right(unit);
  }

  Either<AuthFailure, Unit> _validateCredentials(NicknameOrEmail nicknameOrEmail, Password password) {
    if (!nicknameOrEmail.isValid() && !password.isValid()) {
      return const Left(AuthFailure.invalidAnyCredentials());
    }
    if (!nicknameOrEmail.isValid()) {
      return nicknameOrEmail.value
          .fold((l) => Left(AuthFailure.invalidEmailOrNickname(l)), (r) => right(unit));
    }
    if (!password.isValid()) {
      return password.value.fold((l) => Left(AuthFailure.invalidPassword(l)), (r) => right(unit));
    }
    return right(unit);
  }
}
