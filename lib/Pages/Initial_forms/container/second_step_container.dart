import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux/redux.dart';

import '../second_step.dart';

class SecondStepContainer extends StatelessWidget {
  const SecondStepContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return SecondStep(
          onChangeGithubLink: vm.onChangeGithubLink,
          onChangeLinkedinLink: vm.onChangeLinkedinLink,
          onChangeTwitterLink: vm.onChangeTwitterLink,
          onChangeInstagramLink: vm.onChangeInstagramLink,
          onChangePortafolioLink: vm.onChangePortafolioLink,
        );
      },
    );
  }
}

class _ViewModel {
  final void Function(String) onChangeGithubLink;
  final void Function(String) onChangeLinkedinLink;
  final void Function(String) onChangeTwitterLink;
  final void Function(String) onChangeInstagramLink;
  final void Function(String) onChangePortafolioLink;

  const _ViewModel({
    // bool isChatPageActive,
    required this.onChangeGithubLink,
    required this.onChangeLinkedinLink,
    required this.onChangeTwitterLink,
    required this.onChangeInstagramLink,
    required this.onChangePortafolioLink,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      onChangeGithubLink: (value) => store.dispatch(
          ChangeSecondStepStateAction(store.state.initFormState.secondStepState.copyWith(githubLink: value))),
      onChangeLinkedinLink: (value) => store.dispatch(ChangeSecondStepStateAction(
          store.state.initFormState.secondStepState.copyWith(linkedinLink: value))),
      onChangeTwitterLink: (value) => store.dispatch(ChangeSecondStepStateAction(
          store.state.initFormState.secondStepState.copyWith(twitterLink: value))),
      onChangeInstagramLink: (value) => store.dispatch(ChangeSecondStepStateAction(
          store.state.initFormState.secondStepState.copyWith(instagramLink: value))),
      onChangePortafolioLink: (value) => store.dispatch(ChangeSecondStepStateAction(
          store.state.initFormState.secondStepState.copyWith(portafolioLink: value))),
    );
  }
}
