import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
///Interface 
abstract class IUserRepository {
  ///
  Stream<Either<Object, User>> getUserSnapshot();
}

abstract class IEmailRepository {
  Future<Either<UserFailure, UserSuccess>> verifyEmail();
  Future<Either<UserFailure, UserSuccess>> sendVerifyEmail();
  Future<Either<UserFailure, Unit>> recoverPassword({required EmailAddress emailAddress});
}
