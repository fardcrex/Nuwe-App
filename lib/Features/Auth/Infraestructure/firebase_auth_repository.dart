import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart' as user;
import 'package:nuwe/Features/User/Domain/value_objects.dart';

class FirebaseAuthRepository with ErrorCode implements IAuthRepository {
  // final IservicesOfToken _servicesOfToken;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  const FirebaseAuthRepository(
    this._firebaseAuth,
    this._firestore,
    /* this._servicesOfToken */
  );
  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      NicknameOrEmail nicknameOrEmail, Password password) async {
    final emailAddressStr = await _getEmailAddressStr(nicknameOrEmail);
    final passwordStr = password.getOrCrash();

    if (emailAddressStr == null) return left(const AuthFailure.emailNotExist());

    try {
      if (nicknameOrEmail.isNickname) {}

      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      //    await _servicesOfToken.loadToken();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      return getAuthFailure(e);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<String?> _getEmailAddressStr(NicknameOrEmail nicknameOrEmail) async {
    final nicknameOrEmailStr = nicknameOrEmail.getOrCrash();
    if (nicknameOrEmail.isNickname) {
      final doc = await _firestore.collection('nickname-email').doc(nicknameOrEmailStr.toLowerCase()).get();
      final data = doc.data();
      return data?['value'] as String?;
    }

    return nicknameOrEmailStr;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithCredentials(
    EmailAddress emailAddress,
    Password password,
    NamePerson namePerson,
    Nickname nickname,
  ) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final namePersonStr = namePerson.getOrCrash();
    final nicknameStr = nickname.getOrCrash();

    final docRef = _firestore.collection('nickname-email').doc(nicknameStr.toLowerCase());
    try {
      final failure = await _firestore.runTransaction<AuthFailure?>((transaction) async {
        final doc = await transaction.get(docRef);

        if (doc.exists) return const AuthFailure.nicknameAlreadyInUse();

        transaction.set(docRef, {'value': emailAddressStr});
      });

      if (failure != null) return left(failure);

      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      await Future.wait([
        _firestore.collection('users').doc(_firebaseAuth.currentUser!.uid).set(user.User(
                isEmailVerified: false,
                emailAddress: emailAddressStr,
                name: namePersonStr,
                nickname: nicknameStr)
            .toJson()),
        _firebaseAuth.currentUser!.sendEmailVerification()
      ]);

      //   await _servicesOfToken.loadToken();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      await docRef.delete();

      return getAuthFailure(e);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

/*   @override
  Future<Either<AuthFailure, String>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      await _firebaseAuth.signInWithCredential(authCredential);
      await _servicesOfToken.loadToken();

      return right(_firebaseAuth.currentUser!.uid);
    } on FirebaseAuthException catch (e) {
      return _getAuthFailure(e);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  } */

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}

mixin ErrorCode {
  Either<AuthFailure, Unit> getAuthFailure(FirebaseAuthException e) {
    if (e.code == 'wrong-password' || e.code == 'user-not-found') {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    }

    if (e.code == 'user-disabled') return left(const AuthFailure.accountDisabled());

    if (e.code == 'email-already-in-use') return left(const AuthFailure.emailAlreadyInUse());

    return left(const AuthFailure.serverError());
  }
}
