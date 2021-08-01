import 'dart:math';

import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final TextEditingController? textController;
  final String? hintText;
  final TextInputType? keyboardType;
  final String initialText;
  final bool canShowError;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final bool isPassword;
  final int lines;
  final void Function(String)? onChanged;
  const InputForm(
      {Key? key,
      this.hintText,
      required this.initialText,
      this.onChanged,
      required this.canShowError,
      this.isPassword = false,
      this.keyboardType,
      this.textCapitalization = TextCapitalization.none,
      this.textInputAction,
      this.lines = 1,
      this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: min(360, MediaQuery.of(context).size.width * 0.92),
      decoration: BoxDecoration(
        //   color: Theme.of(context).primaryColor,
        border: Border.all(
          color: canShowError ? Theme.of(context).errorColor : Colors.white,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        controller: textController,
        obscureText: isPassword,
        keyboardType: keyboardType,
        cursorColor: Colors.white,
        minLines: lines,
        maxLines: lines,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.zero,
          hintText: hintText,
        ),
      ),
    );
  }
}
