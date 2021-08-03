import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:redux/redux.dart';
import 'Auth/auth_state/auth_state.dart';
import 'Init-Form/state/init_form_state.dart';
import 'User/user_state/user_state.dart';
part 'app_state.freezed.dart';

typedef MiddlewareAct<State, Action> = dynamic Function(
    Store<State> store, Action action, dynamic Function(dynamic) next);

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    required AuthState authState,
    required UserStates userState,
    required InitFormState initFormState,
  }) = _AppState;

  factory AppState.initial() => AppState(
        authState: AuthState.initial(),
        userState: const UserStates.loading(),
        initFormState: InitFormState.initial(),
      );
}
