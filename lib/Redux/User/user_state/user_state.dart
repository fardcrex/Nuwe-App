import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
part 'user_state.freezed.dart';

@freezed
abstract class UserStates with _$UserStates {
  const factory UserStates({required UserData user}) = UserState;
  const factory UserStates.loading() = UserStatesLoading;
  const factory UserStates.emailNotVerified() = EmailNotVerified;
  const factory UserStates.notCreateUserInformation(IsNotCreateInformation userBasic) =
      NotCreateUserInformation;
  const factory UserStates.error(Object error) = UserStateError;
}
