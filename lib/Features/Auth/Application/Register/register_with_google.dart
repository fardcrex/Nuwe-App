import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

class RegisterWithGoogle {
  final IAuthSocialRepository _authRepository;

  RegisterWithGoogle(this._authRepository);

  Future<Either<AuthFailure, Unit>> call(String nicknameStr) async {
    final nickname = Nickname(nicknameStr);

    final validate = _validateCredentials(nickname);

    if (validate.isLeft()) return validate;

    return _authRepository.registerWithGoogle(nickname);
  }

  Either<AuthFailure, Unit> _validateCredentials(Nickname password) {
    return password.value.fold(
      (l) => Left(AuthFailure.invalidNickname(l)),
      (_) => right(unit),
    );
  }
}
