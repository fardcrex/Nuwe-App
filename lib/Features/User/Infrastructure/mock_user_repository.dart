import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
import 'package:rxdart/rxdart.dart';

class MockUserRepository implements IUserRepository {
  @override
  Stream<Either<Object, User>> getUserSnapshot() {
    return TimerStream(
            User(
              emailAddress: 'mock@mocking.com',
              isEmailVerified: true,
              name: 'El Nuwe',
              nickname: 'nuwe2021',
            ),
            const Duration(seconds: 3))
        .switchMap((user) => Stream.value(right(user)));
  }
}
