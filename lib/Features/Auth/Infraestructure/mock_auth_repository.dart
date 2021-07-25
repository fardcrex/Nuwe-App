import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';

class MockAuthRepository implements IAuthRepository {
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

class MockSocialRepository implements IAuthSocialRepository {
  @override
  Future<Either<AuthFailure, Unit>> signInWithGithub() async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithTwitter() async {
    return right(unit);
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<Either<AuthFailure, Unit>> registerWithGoogle(Nickname nickname) async {
    return right(unit);
  }
}
