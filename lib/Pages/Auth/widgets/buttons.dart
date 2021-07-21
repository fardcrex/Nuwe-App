import 'dart:math';

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String maintext;
  final void Function()? onPress;
  const PrimaryButton({Key? key, required this.maintext, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
        ),
        child: Container(
          alignment: Alignment.center,
          // padding: const EdgeInsets.symmetric(vertical: 16),
          width: min(360, MediaQuery.of(context).size.width * 0.92),
          child: Text(maintext),
        ));
  }
}

class SecundaryButton extends StatelessWidget {
  final String maintext;
  final void Function()? onPress;
  const SecundaryButton({Key? key, required this.maintext, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shadowColor: Theme.of(context).primaryColor,
            side: BorderSide(color: Theme.of(context).primaryColor)),
        child: Container(
          alignment: Alignment.center,
          //   padding: const EdgeInsets.symmetric(vertical: 16),
          width: min(360, MediaQuery.of(context).size.width * 0.92),
          child: Text(maintext),
        ));
  }
}

class TextNuweButton extends StatelessWidget {
  final String maintext;
  final AlignmentGeometry? alignment;
  final void Function()? onPress;

  const TextNuweButton({Key? key, required this.maintext, this.onPress, this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: min(360, MediaQuery.of(context).size.width * 0.92),
          //color: Colors.red,
          alignment: alignment,
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                padding: EdgeInsets.zero,
                shadowColor: Theme.of(context).primaryColor,
              ),
              child: Text(maintext)),
        ),
      ],
    );
  }
}
