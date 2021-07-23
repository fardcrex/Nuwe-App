import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';

class VerifyEmail {
  Future<Either<UserFailure, UserSuccess>> call() async {
    await Future.delayed(const Duration(seconds: 2));
    return left(const UserFailure.emailNotVerified());
  }
}

class SendVerifyEmail {
  Future<Either<UserFailure, UserSuccess>> call() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(const UserSuccess.emailSended());
  }
}
