import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, String>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required NamePerson namePerson,
    required Nickname nickname,
  });
  Future<Either<AuthFailure, String>> signInWithEmailAndPassword({
    required NicknameOrEmail emailAddress,
    required Password password,
  });
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> recoverPassword({required EmailAddress emailAddress});
}

abstract class IAuthSocialRepository {
  Future<Either<AuthFailure, String>> signInWithGoogle();
  Future<Either<AuthFailure, String>> signInWithTwitter();
}
