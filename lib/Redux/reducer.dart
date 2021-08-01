import 'package:nuwe/Redux/User/reducers.dart';

import 'Auth/reducers.dart';
import 'Init-Form/reducer.dart';
import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    initFormState: initFormReducer(state.initFormState, action),
    authState: authReducer(state.authState, action),
    userState: userReducer(state.userState, action),
  );
}
