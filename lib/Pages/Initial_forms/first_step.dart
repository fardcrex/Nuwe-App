import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/title_form.dart';

import 'container/buttom_next.dart';

class FirsStep extends StatelessWidget {
  final void Function(String) onChangeCountry;
  final void Function(String) onChangeCity;
  final void Function(String) onChangeBio;
  final void Function(String) onChangeAge;
  final bool canShowCountryError;
  final bool canShowCityError;
  final bool canShowAgeError;
  const FirsStep(
      {Key? key,
      required this.onChangeCountry,
      required this.onChangeCity,
      required this.onChangeBio,
      required this.canShowCountryError,
      required this.canShowCityError,
      required this.canShowAgeError,
      required this.onChangeAge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        const SizedBox(height: 10.0),
        const TitleInput('INFORMACIÓN PERSONAL'),
        const SizedBox(height: 20.0),
        InputForm(
          initialText: '',
          canShowError: canShowCountryError,
          hintText: 'País de residencia *',
          textInputAction: TextInputAction.done,
          textCapitalization: TextCapitalization.words,
          onChanged: onChangeCountry,
        ),
        InputForm(
          initialText: '',
          canShowError: canShowCityError,
          hintText: 'Ciudad de residencia *',
          textInputAction: TextInputAction.done,
          textCapitalization: TextCapitalization.words,
          onChanged: onChangeCity,
        ),
        InputForm(
          initialText: '',
          canShowError: canShowAgeError,
          hintText: 'Edad *',
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          onChanged: onChangeAge,
        ),
        InputForm(
          initialText: '',
          canShowError: false,
          hintText: 'Bio',
          lines: 4,
          textCapitalization: TextCapitalization.sentences,
          textInputAction: TextInputAction.done,
          onChanged: onChangeBio,
        ),
        const SizedBox(height: 10.0),
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
