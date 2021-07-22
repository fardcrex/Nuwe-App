import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:redux/redux.dart';
import 'Auth/auth_modelo/auth_state.dart';
part 'app_state.freezed.dart';

typedef MiddlewareAct<State, A> = dynamic Function(
  Store<State> store,
  A action,
  dynamic Function(dynamic) next,
);

@freezed
abstract class AppState with _$AppState {
  const factory AppState({required AuthState authState}) = _AppState;

  factory AppState.initial() => AppState(authState: AuthState.initial());
}
