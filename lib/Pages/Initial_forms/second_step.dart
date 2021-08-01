import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/title_form.dart';

import 'container/buttom_next.dart';
import 'container/buttom_previus.dart';

class SecondStep extends StatelessWidget {
  const SecondStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        const SizedBox(height: 10.0),
        const TitleInput('Redes Sociales'),
        const SizedBox(height: 20.0),
        const SubTitleInput('Introduce el enlace completo'),
        const SizedBox(height: 20.0),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Github',
          textInputAction: TextInputAction.next,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Linkedin',
          textInputAction: TextInputAction.next,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Twitter',
          textInputAction: TextInputAction.next,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Instagram',
          textInputAction: TextInputAction.next,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Portafolio',
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ButtomPrevius(),
            ButtomNext(),
          ],
        ),
      ],
    );
  }
}
