import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:redux/redux.dart';

import 'actions.dart';

final userReducer = combineReducers<UserStates>([
  TypedReducer<UserStates, UpdateUserStateAction>(_updateUserStateReducers),
  TypedReducer<UserStates, SignOutAction>(_cleanUserStateReducers),
]);

UserStates _updateUserStateReducers(UserStates state, UpdateUserStateAction action) {
  return action.userState;
}

UserStates _cleanUserStateReducers(UserStates _, SignOutAction __) {
  return const UserStates.loading();
}
