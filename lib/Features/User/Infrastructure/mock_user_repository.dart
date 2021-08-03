import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
import 'package:rxdart/rxdart.dart';

class MockUserRepository implements IUserRepository {
  @override
  Stream<Either<Object, User>> getUserSnapshot() {
    return TimerStream(
            User.isNotCreateInformation(
              emailAddress: 'mock@mocking.com',
              name: 'El Nuwe',
              nickname: 'nuwe2021',
            ),
            const Duration(seconds: 3))
        .switchMap((user) => Stream.value(right(user)));
  }

  @override
  Future<Either<UserFailure, UserSuccess>> createUserInformation(UserData user) async {
    await Future.delayed(const Duration(seconds: 2));
    return left(UserFailure.error('e'));
  }
}
