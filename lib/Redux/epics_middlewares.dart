import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:redux_epics/redux_epics.dart';

import 'User/epic_middleware.dart';
import 'app_state.dart';

Stream<dynamic> Function(Stream<dynamic>, EpicStore<AppState> store) getEpicsMiddleware({
  required IUserRepository userRepository,
}) {
  return combineEpics<AppState>([
    UserStateEpic(userRepository),
  ]);
}
