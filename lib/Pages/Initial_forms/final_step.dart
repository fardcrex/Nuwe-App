import 'package:flutter/material.dart';
import 'package:nuwe/Settings/style.dart';

import 'container/buttom_next.dart';
import 'container/buttom_previus.dart';
import 'widgets/input_box.dart';
import 'widgets/title_form.dart';

class FinalStep extends StatelessWidget {
  const FinalStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.18;
    return InputBox(
      children: [
        const SizedBox(height: 10.0),
        const TitleInput('¡TODO PREPARADO!'),
        SizedBox(height: height),
        Center(child: Text('VAMOS', style: textStyle)),
        const SizedBox(height: 10.0),
        Center(child: Text('PARA', style: textStyle)),
        const SizedBox(height: 10.0),
        Center(child: Text('NUWE', style: textStyle)),
        SizedBox(height: height),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ButtomPrevius(),
            ButtomFinish(),
          ],
        ),
      ],
    );
  }

  TextStyle get textStyle => const TextStyle(fontSize: 32, fontFamily: FontNuweFamily.montserratBold);
}
