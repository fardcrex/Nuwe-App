import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> registerWithCredentials(
    EmailAddress emailAddress,
    Password password,
    NamePerson namePerson,
    Nickname nickname,
  );
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
    NicknameOrEmail nicknameOrEmail,
    Password password,
  );
  Future<void> signOut();
}

abstract class IAuthSocialRepository {
  Future<Either<AuthFailure, String>> signInWithGoogle();
  Future<Either<AuthFailure, String>> signInWithTwitter();
}
