import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/app_state.dart';

class ButtomPrevius extends StatelessWidget {
  const ButtomPrevius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Function()>(
      converter: (store) => () => {
            store.dispatch(const GoToPreviusFormStepAction()),
            FocusScope.of(context).unfocus(),
          },
      builder: (context, goToNextStep) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return OutlinedButton(
          onPressed: goToNextStep,
          child: Container(
            width: 80,
            alignment: Alignment.center,
            child: const Text('Volver'),
          ),
        );
      },
    );
  }
}
