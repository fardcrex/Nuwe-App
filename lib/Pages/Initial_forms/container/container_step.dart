import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Redux/Init-Form/state/init_form_state.dart';
import 'package:nuwe/Redux/app_state.dart';

class ContainerStep extends StatelessWidget {
  final ViewModelBuilder<int> builder;
  const ContainerStep({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (store) => StepForm.values.indexOf(store.state.initFormState.stepForm),
      builder: (context, index) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return builder(context, index);
      },
    );
  }
}
