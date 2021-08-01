import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Redux/Init-Form/actions.dart';
import 'package:nuwe/Redux/app_state.dart';

class ButtomNext extends StatelessWidget {
  const ButtomNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Function()>(
      converter: (store) => () => {
            store.dispatch(const GoToNextFormStepAction()),
            FocusScope.of(context).unfocus(),
          },
      builder: (context, goToNextStep) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return ElevatedButton(
          onPressed: goToNextStep,
          child: Container(
            width: 120,
            alignment: Alignment.center,
            child: const Text('Siguiente'),
          ),
        );
      },
    );
  }
}

class PrimaryButtonInput extends StatelessWidget {
  final String maintext;
  final void Function()? onPress;
  final bool isSubmitting;
  const PrimaryButtonInput({Key? key, required this.maintext, this.onPress, this.isSubmitting = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isSubmitting ? Theme.of(context).canvasColor : Theme.of(context).primaryColor),
          //   padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
        ),
        child: Container(
          alignment: Alignment.center,
          // padding: const EdgeInsets.symmetric(vertical: 16),
          width: 120,
          child: Text(
            maintext,
            style: TextStyle(color: isSubmitting ? const Color(0xFFB5B5B5) : Colors.white),
          ),
        ));
  }
}
