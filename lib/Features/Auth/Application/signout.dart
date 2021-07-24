import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';

class SignOut {
  final IAuthRepository _authRepository;
  SignOut(this._authRepository);
  Future<void> call() async {
    await _authRepository.signOut();
  }
}
