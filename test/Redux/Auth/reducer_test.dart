import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Shared/Domain/failures.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:nuwe/Redux/reducer.dart';
import 'package:redux/redux.dart';

import 'package:test/test.dart';

void main() {
  group('State Reducer', () {
    test('Deberia reiniciarse el estado  de UserState en un sign out', () {
      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial().copyWith(
            userState: UserStates(
                user: UserData(
          socialLinks: [],
          age: 25,
          country: '',
          desiredJob: 'remote',
          salaryRange: 250,
          emailAddress: 'emailAddress',
          city: 'Marte',
          nickname: 'nickname',
          name: 'name',
        ))),
      );

      //   when(authRepository.signOut()).thenAnswer((_) => SynchronousFuture(null));

      store.dispatch(const SignOutAction());

      expect(store.state.userState, const UserStates.loading());
    });

    test('Deberia cambiar login credentials on change Action', () {
      const nicknameOrEmailLoging = 'nuwe2021Loging';
      const passwordLogin = 'secretPassLogin';

      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
      );

      store.dispatch(const EmailOrNicknameOnChangeAction(nicknameOrEmailLoging));
      store.dispatch(const PasswordLoginOnChangeAction(passwordLogin));

      expect(store.state.authState.nicknameOrEmailLoging, nicknameOrEmailLoging);
      expect(store.state.authState.passwordLogin, passwordLogin);
    });

    test('Deberia cambiar registrar credentials on change Action', () {
      const nickname = 'nickname';
      const namePerson = 'Nuwe Fulano';
      const emailAddress = 'nuwe2021Loging';
      const password = 'secretPass';
      const passwordConfirm = 'secretPass';

      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
      );

      store.dispatch(const EmailRegisterOnChangeAction(emailAddress));
      store.dispatch(const PasswordRegisterOnChangeAction(password));
      store.dispatch(const PasswordConfirmOnChangeAction(passwordConfirm));
      store.dispatch(const NicknameRegisterOnChangeAction(nickname));
      store.dispatch(const NamePersonRegisterOnChangeAction(namePerson));

      expect(store.state.authState.emailAddressRegister, emailAddress);
      expect(store.state.authState.passwordRegister, password);
      expect(store.state.authState.passwordConfirm, passwordConfirm);
      expect(store.state.authState.nickname, nickname);
      expect(store.state.authState.namePerson, namePerson);
    });

    test('Deberia mostrar error nickname empty', () {
      const nickname = '';
      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
      );

      store.dispatch(const NicknameRegisterOnChangeAction(nickname));
      store.dispatch(const GoToNextStepAction());

      expect(store.state.authState.showErrorMessageRegisterFirstStep, true);
      expect(
          store.state.authState.authFailureOrSuccessOption,
          optionOf(
              left<AuthFailure, Unit>(const InvalidNickname(EmptyValue<String>(failedValue: nickname)))));
    });
    test('Deberia mostrar error nickname corto', () {
      const nickname = 'Nuwe';
      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
      );

      store.dispatch(const NicknameRegisterOnChangeAction(nickname));
      store.dispatch(const GoToNextStepAction());

      expect(store.state.authState.showErrorMessageRegisterFirstStep, true);
      expect(
          store.state.authState.authFailureOrSuccessOption,
          optionOf(left<AuthFailure, Unit>(
              const InvalidNickname(ShortCharacters<String>(failedValue: nickname)))));
    });
    test('Deberia mostrar error nickname inválido', () {
      const nickname = 'Nuwe Nuwe 555';
      final store = Store<AppState>(
        appReducer,
        initialState: AppState.initial(),
      );

      store.dispatch(const NicknameRegisterOnChangeAction(nickname));
      store.dispatch(const GoToNextStepAction());

      expect(store.state.authState.showErrorMessageRegisterFirstStep, true);
      expect(
          store.state.authState.authFailureOrSuccessOption,
          optionOf(
              left<AuthFailure, Unit>(const InvalidNickname(InvalidFormat<String>(failedValue: nickname)))));
    });
  });
}
