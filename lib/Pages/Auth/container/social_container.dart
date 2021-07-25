import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Pages/Auth/widgets/social_buttons.dart';
import 'package:nuwe/Redux/Auth/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux/redux.dart';

class SocialContainer extends StatelessWidget {
  final bool isFromRegisterPage;
  const SocialContainer({Key? key, this.isFromRegisterPage = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GoogleButton(
              isNavigate: isFromRegisterPage,
              onChangeNickname: vm.onChangeNickname,
              onTap: () => isFromRegisterPage ? vm.registerWithGoogleAction() : vm.loginWithGoogleAction(),
            ),
            TwitterButton(
              isNavigate: isFromRegisterPage,
              onChangeNickname: vm.onChangeNickname,
            ),
            GithubButton(
              isNavigate: isFromRegisterPage,
              onChangeNickname: vm.onChangeNickname,
            ),
          ],
        );
      },
    );
  }
}

class _ViewModel {
  final void Function() loginWithGoogleAction;
  final void Function() registerWithGoogleAction;
  final void Function(String) onChangeNickname;
  final bool isSubmitting;

  const _ViewModel({
    required this.loginWithGoogleAction,
    required this.registerWithGoogleAction,
    required this.isSubmitting,
    required this.onChangeNickname,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      isSubmitting: store.state.authState.isSubmitting,
      loginWithGoogleAction: () => store.dispatch(const LoginWithGoogleAction()),
      registerWithGoogleAction: () => store.dispatch(const RegisterWithGoogleAction()),
      onChangeNickname: (value) => store.dispatch(NicknameRegisterOnChangeAction(value)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel && runtimeType == other.runtimeType && isSubmitting == other.isSubmitting;
  @override
  int get hashCode => isSubmitting.hashCode ^ isSubmitting.hashCode;
}
