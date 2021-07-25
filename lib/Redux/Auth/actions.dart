import 'auth_state/auth_state.dart';

class EmailOrNicknameOnChangeAction {
  final String emailOrNickname;
  const EmailOrNicknameOnChangeAction(this.emailOrNickname);
}

class PasswordLoginOnChangeAction {
  final String password;
  const PasswordLoginOnChangeAction(this.password);
}

class EmailRegisterOnChangeAction {
  final String emailAddress;
  const EmailRegisterOnChangeAction(this.emailAddress);
}

class PasswordRegisterOnChangeAction {
  final String password;
  const PasswordRegisterOnChangeAction(this.password);
}

class PasswordConfirmOnChangeAction {
  final String password;
  const PasswordConfirmOnChangeAction(this.password);
}

class NicknameRegisterOnChangeAction {
  final String nickname;
  const NicknameRegisterOnChangeAction(this.nickname);
}

class NicknameSocialOnChangeAction {
  final String nickname;
  const NicknameSocialOnChangeAction(this.nickname);
}

class NamePersonRegisterOnChangeAction {
  final String namePerson;
  const NamePersonRegisterOnChangeAction(this.namePerson);
}

class SignInWithCredentialsAction {
  const SignInWithCredentialsAction();
}

class SignUpWithCredentialsAction {
  const SignUpWithCredentialsAction();
}

class GoToNextStepAction {
  const GoToNextStepAction();
}

class SignOutAction {
  const SignOutAction();
}

class LoginWithGoogleAction {
  const LoginWithGoogleAction();
}

class RegisterWithGoogleAction {
  const RegisterWithGoogleAction();
}

class UpdateAuthStateAction {
  final AuthState authState;

  const UpdateAuthStateAction(this.authState);
}
