import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';

abstract class IUserRepository {
  Stream<Either<Object, User>> getUserSnapshot();
}
