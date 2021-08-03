import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Application/create_information.dart';
import 'package:nuwe/Features/User/Application/verified_email.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/User/user_state/user_state.dart';
import 'package:redux/redux.dart';

import '../app_state.dart';
import 'actions.dart';

List<Middleware<AppState>> createUserMiddlewares({
  required VerifyEmail verifyEmail,
  required SendVerifyEmail sendVerifyEmail,
  required CreateUserInformation createUserInformation,
}) {
  final verifyEmailMiddleware = getVerifyEmailMiddleware(verifyEmail);
  final sendVerifyEmailMiddleware = getSendVerifyEmailMiddleware(sendVerifyEmail);
  final updateUserInformationMiddleware = getUpdateUserInformationMiddleware(createUserInformation);
  return [
    TypedMiddleware<AppState, VerifyEmailAction>(verifyEmailMiddleware),
    TypedMiddleware<AppState, SendVerifyEmailAction>(sendVerifyEmailMiddleware),
    TypedMiddleware<AppState, CreateUserInformationAction>(updateUserInformationMiddleware),
  ];
}

MiddlewareAct<AppState, VerifyEmailAction> getVerifyEmailMiddleware(VerifyEmail verifyEmail) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    if (store.state.authState.isSubmitting) return;

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: true,
      userFailureOrSuccessOption: none(),
    )));

    final result = await verifyEmail();

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      isSubmitting: false,
      userFailureOrSuccessOption: optionOf(result),
    )));
  };
}

MiddlewareAct<AppState, SendVerifyEmailAction> getSendVerifyEmailMiddleware(SendVerifyEmail sendVerifyEmail) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(UpdateAuthStateAction(store.state.authState.copyWith(
      userFailureOrSuccessOption: none(),
    )));

    final result = await sendVerifyEmail();

    next(UpdateAuthStateAction(store.state.authState.copyWith(
      userFailureOrSuccessOption: optionOf(result),
    )));
  };
}

MiddlewareAct<AppState, CreateUserInformationAction> getUpdateUserInformationMiddleware(
    CreateUserInformation createUserInformation) {
  return (Store<AppState> store, action, NextDispatcher next) {
    final formState = store.state.initFormState;
    final userState = store.state.userState;
    userState.map(
      (_) {},
      notCreateUserInformation: (value) async {
        next(const UpdateUserStateAction(UserStates.loading()));
        next(UpdateFormStateAction(
          store.state.initFormState.copyWith(userFailureOrSuccessOption: none()),
        ));
        final res = await createUserInformation.call(
          age: formState.firstStepState.age,
          city: formState.firstStepState.city,
          country: formState.firstStepState.country,
          bio: formState.firstStepState.bio,
          location: formState.thirdStepState.location,
          salaryRange: formState.thirdStepState.salaryRange,
          lookingWork: formState.thirdStepState.lookingWork,
          desiredJob: formState.thirdStepState.desiredJob,
          disponibilityToTravel: formState.thirdStepState.disponibilityToTravel,
          immediateIncorporation: formState.thirdStepState.immediateIncorporation,
          githubLink: formState.secondStepState.githubLink,
          linkedinLink: formState.secondStepState.linkedinLink,
          twitterLink: formState.secondStepState.twitterLink,
          instagramLink: formState.secondStepState.instagramLink,
          portafolioLink: formState.secondStepState.portafolioLink,
          receiveNotificationFromCompanies: formState.thirdStepState.receiveNotificationFromCompanies,
          workRemote: formState.thirdStepState.workRemote,
          stacks: formState.fourthStepState.stacks.toList(),
          userBasic: value.userBasic,
        );
        if (res.isLeft()) {
          next(UpdateUserStateAction(userState));
          await Future.delayed(const Duration(milliseconds: 200));
          next(UpdateFormStateAction(
            store.state.initFormState.copyWith(userFailureOrSuccessOption: optionOf(res)),
          ));
        }
      },
      loading: (_) {},
      emailNotVerified: (_) {},
      error: (_) {},
    );
  };
}
