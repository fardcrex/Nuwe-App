import 'package:flutter/material.dart';

class AssetsImage {
  static const logo = 'assets/logo.png';
  static const icon = 'assets/nuwe_icon.png';
}

class FontNuweFamily {
  static const montserratMedium = 'MontserratMedium';
  static const montserratRegular = 'MontserratRegular';
  static const montserratBold = 'MontserratBold';
}

class NuweThemeData {
  NuweThemeData._();

  static const _primaryColor = Color(0xFF569B51);
  static const _errorColorDark = Color(0xFFd32f2f);
  static const _errorColor = Color(0xFFe84545);
  static const _backgroundColor = Color(0xFF232730);

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: _primaryColor,
        backgroundColor: _backgroundColor,
        canvasColor: const Color(0xFF8E8E8E).withOpacity(0.4),
        errorColor: _errorColorDark,
        fontFamily: FontNuweFamily.montserratMedium,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(_primaryColor))),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                primary: _primaryColor,
                shadowColor: _primaryColor,
                side: const BorderSide(color: _primaryColor)))
        /* dark theme settings */
        );
  }

  static ThemeData get theme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: _primaryColor,
        errorColor: _errorColor,
        canvasColor: const Color(0xFF8E8E8E).withOpacity(0.4),
        fontFamily: FontNuweFamily.montserratMedium
        /* light theme settings */
        );
  }
}
