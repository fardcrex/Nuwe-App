import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';

class FirebaseEmailRepository implements IEmailRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseEmailRepository(this._firebaseAuth);
  @override
  Future<Either<UserFailure, UserSuccess>> sendVerifyEmail() async {
    try {
      if (_firebaseAuth.currentUser == null) return left(const UserFailure.emailNotSend());
      await _firebaseAuth.currentUser!.sendEmailVerification();
      return right(const UserSuccess.emailSended());
    } catch (e) {
      return left(UserFailure.error(e));
    }
  }

  @override
  Future<Either<UserFailure, UserSuccess>> verifyEmail() async {
    try {
      if (_firebaseAuth.currentUser == null) return left(const UserFailure.emailNotVerified());

      await _firebaseAuth.currentUser!.reload();

      if (!_firebaseAuth.currentUser!.emailVerified) return left(const UserFailure.emailNotVerified());

      return right(const UserSuccess.empty());
    } catch (e) {
      return left(UserFailure.error(e));
    }
  }

  @override
  Future<Either<UserFailure, Unit>> recoverPassword({required EmailAddress emailAddress}) {
    // TODO: implement recoverPassword
    throw UnimplementedError();
  }
}
