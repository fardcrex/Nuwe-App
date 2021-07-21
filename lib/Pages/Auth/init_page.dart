import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nuwe/style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class InitPage extends StatelessWidget {
  static const primaryColor = Color(0xFF569B51);
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232730),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 4),
            Image.asset(
              AssetsImage.logo,
              width: min(280, MediaQuery.of(context).size.width * 0.9),
            ),
            const SizedBox(height: 20),
            const Text(
              'Empoyering tech amazing individuals ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  ' to shine trough  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
                Container(
                  constraints: const BoxConstraints(minWidth: 90),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                      TypewriterAnimatedText('hackathons'),
                      TypewriterAnimatedText('talks'),
                      TypewriterAnimatedText('challenges'),
                    ]),
                  ),
                )
              ],
            ),
            const Spacer(flex: 4),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor)),
              child: const Text(
                'INICIAR SESIÓN',
                style: TextStyle(),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(primaryColor),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              ),
              child: const Text('CREAR CUENTA'),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
