import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/i_auth_repository.dart';

import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart' as nuwe;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

import 'firebase_auth_repository.dart';

class FirebaseAuthSocialRepository with ErrorCode implements IAuthSocialRepository {
  final FirebaseAuth _firebaseAuth;

  final FirebaseFirestore _firestore;

  final GoogleSignIn _googleSignIn;

  const FirebaseAuthSocialRepository(
    this._firebaseAuth,
    this._firestore,
    this._googleSignIn,
    /* this._servicesOfToken */
  );
  @override
  Future<Either<AuthFailure, Unit>> signInWithGithub() async {
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return left(const AuthFailure.cancelledByUser());

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(authCredential);

      final doc = await _firestore.collection('users').doc(userCredential.user!.uid).get();

      if (!doc.exists) {
        await Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
        return left(const AuthFailure.emailNotExist());
      }
      //TODO crear un servicio
      //  await _servicesOfToken.loadToken();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      return getAuthFailure(e);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithGoogle(Nickname nickname) async {
    final nicknameStr = nickname.getOrCrash();
    final docRef = _firestore.collection('nickname-email').doc(nicknameStr.toLowerCase());
    try {
      final failure = await _firestore.runTransaction<AuthFailure?>((transaction) async {
        final doc = await transaction.get(docRef);

        if (doc.exists) return const AuthFailure.nicknameAlreadyInUse();

        transaction.set(docRef, {'value': ''});
      });

      if (failure != null) return left(failure);

      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return left(const AuthFailure.cancelledByUser());

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(authCredential);
      //  await _servicesOfToken.loadToken();
      //TODO extraer aun servicio

      final currentUser = userCredential.user!;

      final docRefUser = _firestore.collection('users').doc(_firebaseAuth.currentUser!.uid);

      final failure2 = await _firestore.runTransaction<AuthFailure?>((transaction) async {
        final doc = await transaction.get(docRefUser);

        if (doc.exists) return const AuthFailure.emailAlreadyInUse();

        transaction.set(docRef, {'value': currentUser.email!});

        transaction.set(
            docRefUser,
            nuwe.User.isNotCreateInformation(
                    emailAddress: currentUser.email!,
                    avatarImage: currentUser.photoURL,
                    name: currentUser.displayName ?? '',
                    nickname: nicknameStr)
                .toJson());
      });

      if (failure2 != null) {
        await docRef.delete();
        await Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
        return left(failure2);
      }

      return right(unit);
    } on FirebaseAuthException catch (e) {
      await docRef.delete();

      return getAuthFailure(e);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithTwitter() {
    // TODO: implement signInWithTwitter
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
