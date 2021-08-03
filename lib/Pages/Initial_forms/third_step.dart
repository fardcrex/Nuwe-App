import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/container/buttom_next.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/title_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/toggle_tab.dart';

import 'container/buttom_previus.dart';
import 'widgets/input_form.dart';

class ThirdStep extends StatelessWidget {
  final void Function(String) onChangeLocation;
  final void Function(String) onChangeDesiredJob;
  final void Function(String) onChangeSalaryRange;
  final void Function(String) onChangeLookingWork;
  final bool canShowDesiredJobError;
  final Function() workRemoteChange;
  final Function() disponibilityToTravelChange;
  final Function() immediateIncorporationChange;
  final Function() receiveNotificationFromCompaniesChange;
  const ThirdStep({
    Key? key,
    required this.onChangeLookingWork,
    required this.onChangeDesiredJob,
    required this.onChangeLocation,
    required this.onChangeSalaryRange,
    required this.canShowDesiredJobError,
    required this.receiveNotificationFromCompaniesChange,
    required this.disponibilityToTravelChange,
    required this.workRemoteChange,
    required this.immediateIncorporationChange,
  }) : super(key: key);
  static const sizedBox15 = SizedBox(height: 15.0);
  static const sizedBoxToggle = SizedBox(height: 20.0);
  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        sizedBox15,
        const TitleInput('PREFERENCIAS LABORALES'),
        sizedBox15,
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Buscando trabajo activamente',
          onChanged: onChangeLookingWork,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: canShowDesiredJobError,
          hintText: 'Puesto de trabajo deseado *',
          onChanged: onChangeDesiredJob,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Localización de preferencia',
          onChanged: onChangeLocation,
          textInputAction: TextInputAction.done,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Rango salarial',
          keyboardType: TextInputType.number,
          onChanged: onChangeSalaryRange,
          textInputAction: TextInputAction.done,
        ),
        sizedBox15,
        ToggleBarNuwe(
          onChange: receiveNotificationFromCompaniesChange,
          title: 'Quiero recibir notificaciones',
        ),
        const Text('de empresas'),
        sizedBoxToggle,
        ToggleBarNuwe(
          title: 'Disponibilidad para viajar',
          onChange: disponibilityToTravelChange,
        ),
        sizedBoxToggle,
        ToggleBarNuwe(
          title: 'Trabajo en remoto',
          onChange: workRemoteChange,
        ),
        sizedBoxToggle,
        ToggleBarNuwe(
          title: 'Incorporación inmediata',
          onChange: immediateIncorporationChange,
        ),
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
