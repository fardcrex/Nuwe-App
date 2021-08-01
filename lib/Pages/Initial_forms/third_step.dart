import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:nuwe/Pages/Initial_forms/container/buttom_next.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/title_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/toggle_tab.dart';

import 'container/buttom_previus.dart';
import 'widgets/input_form.dart';

class ThirdStep extends StatelessWidget {
  const ThirdStep({Key? key}) : super(key: key);
  static const sizedBox15 = SizedBox(height: 15.0);
  static const sizedBoxToggle = SizedBox(height: 20.0);
  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        sizedBox15,
        const TitleInput('PREFERENCIAS LABORALES'),
        sizedBox15,
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Buscando trabajo activamente',
          textInputAction: TextInputAction.done,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Puesto de trabajo deseado *',
          textInputAction: TextInputAction.done,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Localización de preferencia',
          textInputAction: TextInputAction.done,
        ),
        const InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Rango salarial',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
        ),
        sizedBox15,
        const ToggleBarNuwe(title: 'Quiero recibir notificaciones de empresas'),
        sizedBoxToggle,
        const ToggleBarNuwe(title: 'Disponibilidad para viajar'),
        sizedBoxToggle,
        const ToggleBarNuwe(title: 'Trabajo en remoto'),
        sizedBoxToggle,
        const ToggleBarNuwe(title: 'Incorporación inmediata'),
        sizedBox15,
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
