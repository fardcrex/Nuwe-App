import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';

class LoginWithGoogle {
  final IAuthSocialRepository _authRepository;

  LoginWithGoogle(this._authRepository);

  Future<Either<AuthFailure, Unit>> call() {
    return _authRepository.signInWithGoogle();
  }
}
