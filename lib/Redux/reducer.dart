import 'package:nuwe/Redux/User/reducers.dart';

import 'Auth/reducers.dart';
import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    authState: authReducer(state.authState, action),
    userState: userReducer(state.userState, action),
  );
}
