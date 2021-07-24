import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';

class VerifyEmail {
  final IEmailRepository _authRepository;

  VerifyEmail(this._authRepository);

  Future<Either<UserFailure, UserSuccess>> call() async {
    return _authRepository.verifyEmail();
  }
}

class SendVerifyEmail {
  final IEmailRepository _authRepository;

  SendVerifyEmail(this._authRepository);
  Future<Either<UserFailure, UserSuccess>> call() async {
    return _authRepository.sendVerifyEmail();
  }
}
