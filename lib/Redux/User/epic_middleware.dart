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
              (error) => UserStates.error(error),
              (user) => user.map((value) => UserStates(user: value),
                  emailNotVerified: (_) => const UserStates.emailNotVerified(),
                  isNotCreateInformation: (value) => UserStates.notCreateUserInformation(value))))
          .map((userState) => UpdateUserStateAction(userState))
          .takeUntil(actions.whereType<CancelStreamUserStateAction>()); // 8
    });
  }
}
