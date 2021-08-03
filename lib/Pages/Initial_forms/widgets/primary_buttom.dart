import 'package:flutter/material.dart';

class PrimaryButtonInput extends StatelessWidget {
  final String maintext;
  final void Function()? onPress;
  final bool isSubmitting;
  const PrimaryButtonInput({Key? key, required this.maintext, this.onPress, this.isSubmitting = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isSubmitting ? Theme.of(context).canvasColor : Theme.of(context).primaryColor),
          //   padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
        ),
        child: Container(
          alignment: Alignment.center,
          // padding: const EdgeInsets.symmetric(vertical: 16),
          width: 100,
          child: Text(
            maintext,
            style: TextStyle(color: isSubmitting ? const Color(0xFFB5B5B5) : Colors.white, fontSize: 12),
          ),
        ));
  }
}
