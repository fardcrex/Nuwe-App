import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/Auth/auth_modelo/auth_state.dart';
import 'package:redux/redux.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UpdateAuthStateAction>(_updateAuthStateReducers),
  TypedReducer<AuthState, EmailOrNicknameOnChangeAction>(_changeEmailOrNicknameReducer),
  TypedReducer<AuthState, PasswordLoginOnChangeAction>(_changePasswordLoginReducer),
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
