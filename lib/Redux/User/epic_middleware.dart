import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Redux/User/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux_epics/redux_epics.dart';

import 'package:rxdart/rxdart.dart';

class UserStateEpic implements EpicClass<AppState> {
  final IUserRepository service;

  UserStateEpic(this.service);

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<InitStreamUserStateAction>().switchMap((requestAction) {
      return service
          .getUserSnapshot()
          .map((result) => result.fold(
                (error) => UserState.error(error),
                (r) => r.isEmailVerified ? UserState(user: r) : const UserState.emailNotVerified(),
              ))
          .map((userState) => UpdateUserStateAction(userState))
          .takeUntil(actions.whereType<CancelStreamUserStateAction>()); // 8
    });
  }
}
