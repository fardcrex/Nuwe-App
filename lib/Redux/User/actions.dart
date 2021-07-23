import 'package:nuwe/Redux/User/user_state/user_state.dart';

class UpdateUserStateAction {
  final UserState userState;

  const UpdateUserStateAction(this.userState);
}

class VerifyEmailAction {
  const VerifyEmailAction();
}

class SendVerifyEmailAction {
  const SendVerifyEmailAction();
}

class InitStreamUserStateAction {
  const InitStreamUserStateAction();
}

class CancelStreamUserStateAction {
  const CancelStreamUserStateAction();
}
