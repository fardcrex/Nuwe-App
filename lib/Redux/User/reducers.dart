import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:redux/redux.dart';

import 'actions.dart';

final userReducer = combineReducers<UserState>([
  TypedReducer<UserState, UpdateUserStateAction>(_updateUserStateReducers),
  TypedReducer<UserState, SignOutAction>(_cleanUserStateReducers),
]);

UserState _updateUserStateReducers(UserState state, UpdateUserStateAction action) {
  return action.userState;
}

UserState _cleanUserStateReducers(UserState _, SignOutAction __) {
  return const UserState.loading();
}
