import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/container/login_container.dart';
import 'package:nuwe/Pages/Auth/init_page.dart';
import 'package:nuwe/Pages/Auth/register_page.dart';
import 'package:nuwe/Pages/Home/home_page.dart';

class AuthRoutes {
  static const initial = '/initial';
  static const login = '/login';
  static const register = '/register';
}

class HomeRoutes {
  static const dashboard = '/dashboard';
}

Map<String, WidgetBuilder> getRoutesDinamoApp() => {
      AuthRoutes.initial: (_) => const InitPage(),
      AuthRoutes.login: (_) => const ContainerLoginPage(),
      AuthRoutes.register: (_) => const RegisterPage(),
      HomeRoutes.dashboard: (_) => const HomePage(),
    };
