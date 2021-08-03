import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/container/login_container.dart';
import 'package:nuwe/Pages/Auth/init_page.dart';
import 'package:nuwe/Pages/Auth/register_page.dart';
import 'package:nuwe/Pages/Auth/verified_page.dart';
import 'package:nuwe/Pages/init_page_logged.dart';

class AuthRoutes {
  static const initial = '/initial';
  static const login = '/login';
  static const register = '/register';
  static const verified = '/verified';
}

class HomeRoutes {
  static const dashboard = '/dashboard';
  static const initForm = '/init-form';
}

Map<String, WidgetBuilder> getRoutesDinamoApp() => {
      AuthRoutes.initial: (_) => const InitPage(),
      AuthRoutes.login: (_) => const ContainerLoginPage(),
      AuthRoutes.register: (_) => const RegisterPage(),
      AuthRoutes.verified: (_) => const VerifiedPage(),
      HomeRoutes.dashboard: (_) => const InitPageLogged(),
    };
