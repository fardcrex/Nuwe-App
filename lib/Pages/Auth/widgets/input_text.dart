import 'dart:math';

import 'package:flutter/material.dart';

class InputNuwe extends StatefulWidget {
  final String? hintText;
  final String initialText;
  final bool canShowError;
  final bool isPassword;
  final void Function(String)? onChanged;
  const InputNuwe(
      {Key? key,
      this.hintText,
      required this.initialText,
      this.onChanged,
      required this.canShowError,
      this.isPassword = false})
      : super(key: key);

  @override
  _InputNuweState createState() => _InputNuweState();
}

class _InputNuweState extends State<InputNuwe> {
  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController(text: widget.initialText);
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: min(360, MediaQuery.of(context).size.width * 0.92),
      decoration: BoxDecoration(
        //   color: Theme.of(context).primaryColor,
        border: Border.all(
          color: widget.canShowError ? Theme.of(context).errorColor : Theme.of(context).primaryColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: textController,
        obscureText: widget.isPassword,
        cursorColor: const Color(0xFF569B51),
        textCapitalization: TextCapitalization.sentences,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
