import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';

class MockAuthRepository implements IAuthRepository {
  @override
  Future<Either<AuthFailure, Unit>> recoverPassword({required EmailAddress emailAddress}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithCredentials(
    EmailAddress emailAddress,
    Password password,
    NamePerson namePerson,
    Nickname nickname,
  ) async {
    await Future.delayed(const Duration(seconds: 2));

    return left(const AuthFailure.emailAlreadyInUse());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
    NicknameOrEmail nicknameOrEmail,
    Password password,
  ) async {
    await Future.delayed(const Duration(seconds: 2));

    return left(const AuthFailure.invalidEmailAndPasswordCombination());
  }

  @override
  Future<void> signOut() async {}
}
