import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  static const textFooterColor = Color(0xff8E8E8E);
  static const textLinkColor = Color(0xffF0F0F0);
  final void Function()? onPress;
  final String textLink;
  final String textFooter;
  const Footer({Key? key, required this.textLink, required this.textFooter, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textFooter,
          textAlign: TextAlign.end,
          style: const TextStyle(color: textFooterColor),
        ),
        SizedBox(
          height: 40,
          child: TextButton(
            onPressed: onPress,
            style: TextButton.styleFrom(
                //padding: EdgeInsets.zero,
                ),
            child: Text(
              textLink,
              textAlign: TextAlign.end,
              style: const TextStyle(color: textLinkColor),
            ),
          ),
        ),
      ],
    );
  }
}
