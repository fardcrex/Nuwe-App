import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';

class MockEmailRepository implements IEmailRepository {
  @override
  Future<Either<UserFailure, UserSuccess>> sendVerifyEmail() async {
    return right(const UserSuccess.emailSended());
  }

  @override
  Future<Either<UserFailure, UserSuccess>> verifyEmail() async {
    return right(const UserSuccess.empty());
  }

  @override
  Future<Either<UserFailure, Unit>> recoverPassword({required EmailAddress emailAddress}) {
    // TODO: implement recoverPassword
    throw UnimplementedError();
  }
}
