import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/app_state.dart';
import 'package:redux/redux.dart';

import '../fourth_step.dart';

class FourthStepContainer extends StatelessWidget {
  const FourthStepContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) {
        return FourthStep(
          onAddStack: vm.onAddStack,
          removeStack: vm.removeStack,
          stacks: vm.stacks,
        );
      },
    );
  }
}

class _ViewModel {
  final void Function(String) onAddStack;
  final void Function(String) removeStack;
  final List<String> stacks;

  const _ViewModel({
    required this.removeStack,
    required this.onAddStack,
    required this.stacks,
  });

  factory _ViewModel.fromStore(Store<AppState> store) {
    return _ViewModel(
      stacks: store.state.initFormState.fourthStepState.stacks.toList(),
      onAddStack: (value) => store.dispatch(AddStackAction(value)),
      removeStack: (value) => store.dispatch(RemoveStackAction(value)),
    );
  }
}
