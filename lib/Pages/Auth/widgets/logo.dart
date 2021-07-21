import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nuwe/Settings/style.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsImage.icon,
          width: min(65, MediaQuery.of(context).size.width * 0.25),
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 20),
        Image.asset(
          AssetsImage.logo,
          width: min(180, MediaQuery.of(context).size.width * 0.6),
        ),
      ],
    );
  }
}
