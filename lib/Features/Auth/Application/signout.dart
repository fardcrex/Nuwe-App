import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';

class SignOut {
  final IAuthRepository _authRepository;
  final IAuthSocialRepository _authSocialRepository;
  SignOut(this._authRepository, this._authSocialRepository);
  Future<void> call() async {
    await _authRepository.signOut();
    await _authSocialRepository.signOut();
  }
}
