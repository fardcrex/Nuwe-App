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
    required String passwordConfirm,
    required String namePerson,
    required String nickname,
    required bool showErrorMessageLogin,
    required bool showErrorMessageRegisterFinalStep,
    required bool showErrorMessageRegisterFirstStep,
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
        passwordConfirm: '',
        passwordRegister: '',
        showErrorMessageLogin: false,
        showErrorMessageRegisterFinalStep: false,
        showErrorMessageRegisterFirstStep: false,
        showErrorMessageRecoverEmail: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );

  bool get canShowNicknameOrEmailError =>
      showErrorMessageLogin && !NicknameOrEmail(nicknameOrEmailLoging).isValid();

  bool get canShowPassworLoginError => showErrorMessageLogin && !Password(passwordLogin).isValid();

  bool get canShowNicknameError => showErrorMessageRegisterFirstStep && isNicknameRegisterInvalid;

  bool get canShowEmailRegisterError => showErrorMessageRegisterFirstStep && isEmailRegisterInvalid;

  bool get canShowNamePersonError => showErrorMessageRegisterFirstStep && isNamePersonInvalid;

  bool get canShowPassworRegisterError =>
      showErrorMessageRegisterFinalStep && !Password(passwordRegister).isValid();
  bool get canShowPassworConfirmError =>
      showErrorMessageRegisterFinalStep && passwordRegister != passwordConfirm;

  bool get isFirstDataStepValid =>
      EmailAddress(emailAddressRegister).isValid() &&
      NamePerson(namePerson).isValid() &&
      Nickname(nickname).isValid();

  bool get isNicknameRegisterInvalid => !nicknameValueObject.isValid();
  bool get isEmailRegisterInvalid => !emailRegisterValueObject.isValid();
  bool get isNamePersonInvalid => !namePersonValueObject.isValid();

  Nickname get nicknameValueObject => Nickname(nickname);
  NamePerson get namePersonValueObject => NamePerson(namePerson);
  EmailAddress get emailRegisterValueObject => EmailAddress(emailAddressRegister);
}
