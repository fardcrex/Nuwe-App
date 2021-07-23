import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:redux/redux.dart';

import 'actions.dart';

final userReducer = combineReducers<UserState>([
  TypedReducer<UserState, UpdateUserStateAction>(_updateUserStateReducers),
]);

UserState _updateUserStateReducers(UserState state, UpdateUserStateAction action) {
  return action.userState;
}
