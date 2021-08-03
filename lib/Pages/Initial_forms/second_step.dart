import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/title_form.dart';

import 'container/buttom_next.dart';
import 'container/buttom_previus.dart';

class SecondStep extends StatelessWidget {
  final void Function(String) onChangeGithubLink;
  final void Function(String) onChangeLinkedinLink;
  final void Function(String) onChangeTwitterLink;
  final void Function(String) onChangeInstagramLink;
  final void Function(String) onChangePortafolioLink;
  const SecondStep({
    Key? key,
    required this.onChangeGithubLink,
    required this.onChangeLinkedinLink,
    required this.onChangeTwitterLink,
    required this.onChangeInstagramLink,
    required this.onChangePortafolioLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        const SizedBox(height: 10.0),
        const TitleInput('Redes Sociales'),
        const SizedBox(height: 20.0),
        const SubTitleInput('Introduce el enlace completo'),
        const SizedBox(height: 20.0),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Github',
          onChanged: onChangeGithubLink,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Linkedin',
          onChanged: onChangeLinkedinLink,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Twitter',
          onChanged: onChangeTwitterLink,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Instagram',
          onChanged: onChangeInstagramLink,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          onChanged: onChangePortafolioLink,
          textInputAction: TextInputAction.done,
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
