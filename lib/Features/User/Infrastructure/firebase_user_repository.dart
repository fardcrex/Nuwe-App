import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseUserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;
  final auth.FirebaseAuth _firebaseAuth;
  const FirebaseUserRepository(this._firestore, this._firebaseAuth);

  //TODO refactorizar
  @override
  Stream<Either<Object, User>> getUserSnapshot() {
    return CombineLatestStream.combine2<bool, Either<Object, User>, Either<Object, User>>(
      _$userEmailVerified,
      _$userFirestore,
      (isEmailVerified, userEither) {
        return userEither.map((user) => user.copyWith(isEmailVerified: isEmailVerified));
      },
    );
  }

  Stream<bool> get _$userEmailVerified => _firebaseAuth.userChanges().map((event) {
        if (event == null) return false;
        return event.emailVerified;
      });

  Stream<Either<Object, User>> get _$userFirestore =>
      _firestore.collection('users').doc(_firebaseAuth.currentUser!.uid).snapshots().map((doc) {
        try {
          final data = doc.data();
          return right(User.fromJson(data!));
        } catch (e) {
          return left(e);
        }
      });
}
