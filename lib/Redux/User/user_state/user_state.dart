import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required User user,
  }) = UserData;
  const factory UserState.loading() = UserStateLoading;
  const factory UserState.emailNotVerified() = EmailNotVerified;
  const factory UserState.error(Object error) = UserStateError;
}
