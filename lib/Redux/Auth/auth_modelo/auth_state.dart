import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuwe/Features/Auth/Domain/auth_failure.dart';
import 'package:nuwe/Features/Auth/Domain/value_objects.dart';
import 'package:nuwe/Features/User/Domain/value_objects.dart';

part 'auth_state.freezed.dart';

@immutable
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required String nicknameOrEmailLoging,
    required String passwordLogin,
    required String emailAddressRegister,
    required String passwordRegister,
    required String namePerson,
    required String nickname,
    required bool showErrorMessageLogin,
    required bool showErrorMessageRegister,
    required bool showErrorMessageRecoverEmail,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.initial() => AuthState(
        /*  nicknameOrEmailLoging: NicknameOrEmail(''),
        nickname: Nickname(''),
        namePerson: NamePerson(''),
        passwordLogin: Password(''),
        emailAddressRegister: EmailAddress(''),
        passwordRegister: Password(''), */
        nicknameOrEmailLoging: '',
        nickname: '',
        namePerson: '',
        passwordLogin: '',
        emailAddressRegister: '',
        passwordRegister: '',
        showErrorMessageLogin: false,
        showErrorMessageRegister: false,
        showErrorMessageRecoverEmail: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );

  bool get canShowNicknameOrEmailError =>
      showErrorMessageLogin && !NicknameOrEmail(nicknameOrEmailLoging).isValid();

  bool get canShowPassworLoginError => showErrorMessageLogin && !Password(passwordLogin).isValid();

  bool get canShowNicknameError => showErrorMessageRegister && !Nickname(nickname).isValid();
}
