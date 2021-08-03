import 'package:flutter/material.dart';
import 'package:nuwe/Settings/style.dart';

class TitleInput extends StatelessWidget {
  final String title;
  const TitleInput(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 18));
  }
}

class SubTitleInput extends StatelessWidget {
  const SubTitleInput(this.subTittle, {Key? key}) : super(key: key);
  final String subTittle;
  @override
  Widget build(BuildContext context) {
    return Text(subTittle,
        style: const TextStyle(fontSize: 14, fontFamily: FontNuweFamily.montserratRegular));
  }
}
