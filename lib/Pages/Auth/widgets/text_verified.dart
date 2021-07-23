import 'package:flutter/material.dart';

class TextVerified extends StatelessWidget {
  const TextVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('VERIFICACIÓN DE CUENTA', style: mainStyle),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Te hemos enviado un correo de verificación a modo de validación. '
            'Ingrese al link adjunto al correo para verificar que es tu cuenta.',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'MontserratRegular'),
          ),
        ),
      ],
    );
  }

  TextStyle get mainStyle => const TextStyle(
        fontSize: 20,
      );
}
