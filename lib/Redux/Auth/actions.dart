import 'auth_modelo/auth_state.dart';

class EmailOrNicknameOnChangeAction {
  final String emailOrNickname;
  const EmailOrNicknameOnChangeAction(this.emailOrNickname);
}

class EmailRegisterOnChangeAction {
  final String emailAddress;
  const EmailRegisterOnChangeAction(this.emailAddress);
}

class PasswordLoginOnChangeAction {
  final String password;
  const PasswordLoginOnChangeAction(this.password);
}

class PasswordRegisterOnChangeAction {
  final String password;
  const PasswordRegisterOnChangeAction(this.password);
}

class SignInWithCredentialsAction {
  const SignInWithCredentialsAction();
}

class UpdateAuthStateAction {
  final AuthState authState;

  const UpdateAuthStateAction(this.authState);
}
