import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nuwe/Settings/style.dart';

class TextMain extends StatelessWidget {
  static const fontSize = 14.0;
  const TextMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Empoyering tech amazing individuals ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: fontSize),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              ' to shine trough  ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: fontSize),
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 90),
              child: DefaultTextStyle(
                style: const TextStyle(fontSize: fontSize, fontFamily: FontNuweFamily.montserratMedium),
                child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                  TypewriterAnimatedText('hackathons'),
                  TypewriterAnimatedText('talks'),
                  TypewriterAnimatedText('challenges'),
                ]),
              ),
            )
          ],
        )
      ],
    );
  }
}
