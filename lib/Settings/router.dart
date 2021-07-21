import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/init_page.dart';
import 'package:nuwe/Pages/Auth/login_page.dart';
import 'package:nuwe/Pages/Auth/register_page.dart';

class AuthRoutes {
  static const initial = '/initial';
  static const login = '/login';
  static const register = '/register';
}

Map<String, WidgetBuilder> getRoutesDinamoApp() => {
      AuthRoutes.initial: (_) => const InitPage(),
      AuthRoutes.login: (_) => const LoginPage(),
      AuthRoutes.register: (_) => const RegisterPage(),
    };
