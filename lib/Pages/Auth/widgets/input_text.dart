import 'dart:math';

import 'package:flutter/material.dart';

class InputNuwe extends StatelessWidget {
  final String? hintText;
  const InputNuwe({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: min(360, MediaQuery.of(context).size.width * 0.92),
      decoration: BoxDecoration(
        //   color: Theme.of(context).primaryColor,
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        cursorColor: const Color(0xFF569B51),
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
