import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/Auth/auth_state/auth_state.dart';
import 'package:redux/redux.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UpdateAuthStateAction>(_updateAuthStateReducers),
  TypedReducer<AuthState, EmailOrNicknameOnChangeAction>(_changeEmailOrNicknameReducer),
  TypedReducer<AuthState, PasswordLoginOnChangeAction>(_changePasswordLoginReducer),
  TypedReducer<AuthState, PasswordConfirmOnChangeAction>(_changePasswordConfirmReducer),
  TypedReducer<AuthState, EmailRegisterOnChangeAction>(_changeEmailRegisterReducer),
  TypedReducer<AuthState, PasswordRegisterOnChangeAction>(_changePasswordRegisterReducer),
  TypedReducer<AuthState, NicknameRegisterOnChangeAction>(_changeNicknameReducer),
  TypedReducer<AuthState, NicknameSocialOnChangeAction>(_changeNicknameSocialReducer),
  TypedReducer<AuthState, NamePersonRegisterOnChangeAction>(_changeNamePersonReducer),
  TypedReducer<AuthState, GoToNextStepAction>(_goToNextStepReducer),
]);

AuthState _changeEmailOrNicknameReducer(AuthState state, EmailOrNicknameOnChangeAction action) {
  return state.copyWith(nicknameOrEmailLoging: action.emailOrNickname);
}

AuthState _changePasswordLoginReducer(AuthState state, PasswordLoginOnChangeAction action) {
  return state.copyWith(passwordLogin: action.password);
}

AuthState _updateAuthStateReducers(AuthState state, UpdateAuthStateAction action) {
  return action.authState;
}

AuthState _changeEmailRegisterReducer(AuthState state, EmailRegisterOnChangeAction action) {
  return state.copyWith(emailAddressRegister: action.emailAddress);
}

AuthState _changePasswordRegisterReducer(AuthState state, PasswordRegisterOnChangeAction action) {
  return state.copyWith(passwordRegister: action.password);
}

AuthState _changePasswordConfirmReducer(AuthState state, PasswordConfirmOnChangeAction action) {
  return state.copyWith(passwordConfirm: action.password);
}

AuthState _changeNicknameReducer(AuthState state, NicknameRegisterOnChangeAction action) {
  return state.copyWith(nickname: action.nickname);
}

AuthState _changeNamePersonReducer(AuthState state, NamePersonRegisterOnChangeAction action) {
  return state.copyWith(namePerson: action.namePerson);
}

AuthState _changeNicknameSocialReducer(AuthState state, NicknameSocialOnChangeAction action) {
  return state.copyWith(nicknameSocial: action.nickname);
}

AuthState _goToNextStepReducer(AuthState state, GoToNextStepAction action) {
  final failure = getAuthFailureFromFirstStep(state);
  return state.copyWith(
    showErrorMessageRegisterFirstStep: true,
    authFailureOrSuccessOption: failure == null ? none() : optionOf(left(failure)),
  );
}

AuthFailure? getAuthFailureFromFirstStep(AuthState authState) {
  return authState.nicknameValueObject.value.fold(
    (l) => AuthFailure.invalidNickname(l),
    (r) => authState.namePersonValueObject.value.fold(
      (l) => AuthFailure.invalidNamePerson(l),
      (r) => authState.emailRegisterValueObject.value.fold(
        (l) => AuthFailure.invalidEmail(l),
        (r) => null,
      ),
    ),
  );
}
