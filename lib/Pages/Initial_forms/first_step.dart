import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/title_form.dart';

import 'container/buttom_next.dart';

class FirsStep extends StatelessWidget {
  const FirsStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        const SizedBox(height: 20.0),
        const TitleInput('INFORMACIÓN PERSONAL'),
        const SizedBox(height: 30.0),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'País de residencia *',
          textInputAction: TextInputAction.done,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Ciudad de residencia *',
          textInputAction: TextInputAction.done,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Edad *',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Bio',
          lines: 5,
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            ButtomNext(),
          ],
        ),
      ],
    );
  }
}
