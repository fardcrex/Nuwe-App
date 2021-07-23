import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nuwe/Redux/Auth/auth_state/auth_state.dart';
import 'package:nuwe/Redux/app_state.dart';

class InputContainer extends StatelessWidget {
  final ViewModelBuilder<AuthState> builder;
  const InputContainer({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthState>(
      converter: (store) => store.state.authState,
      builder: (context, authState) {
        // FlushbarHelper.createError(message: "Error carajo", duration: Duration(seconds: 2)).show(context);
        return builder(context, authState);
      },
    );
  }
}
