import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../register_social_page.dart';

class TwitterButton extends StatelessWidget {
  static const colorTwitter = Color(0xff1D9BF0);
  final void Function()? onTap;
  final void Function(String) onChangeNickname;
  final bool isNavigate;
  const TwitterButton({Key? key, this.onTap, required this.onChangeNickname, required this.isNavigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToTheRegisterPage(context),
      child: _getIcon(radius: 55, size: 28),
    );
  }

  Widget _getIcon({required double radius, required double size}) => SocialIcon(
        radius: radius,
        backgroundColor: colorTwitter,
        icon: Icon(FontAwesomeIcons.twitter, color: Colors.white, size: size),
      );

  void goToTheRegisterPage(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (!isNavigate) return onTap?.call();
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (_) => RegisterSocialPage(
          registerWithSocial: onTap,
          onChangeNickname: onChangeNickname,
          socialIcon: _getIcon(radius: 120, size: 60),
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  static const colorGoogle = Color(0xffDB3D29);
  final void Function()? onTap;
  final void Function(String) onChangeNickname;
  final bool isNavigate;
  const GoogleButton({
    Key? key,
    this.onTap,
    required this.onChangeNickname,
    required this.isNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToTheRegisterPage(context),
      child: _getIcon(radius: 55, size: 28),
    );
  }

  Widget _getIcon({required double radius, required double size}) => SocialIcon(
        radius: radius,
        backgroundColor: colorGoogle,
        icon: Icon(FontAwesomeIcons.google, color: Colors.white, size: size),
      );

  void goToTheRegisterPage(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (!isNavigate) return onTap?.call();
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (_) => RegisterSocialPage(
          registerWithSocial: onTap,
          onChangeNickname: onChangeNickname,
          socialIcon: _getIcon(radius: 120, size: 60),
        ),
      ),
    );
  }
}

class GithubButton extends StatelessWidget {
  static const colorMicrosof = Color(0xff2E353F);

  final void Function(String) onChangeNickname;

  final void Function()? onTap;

  final bool isNavigate;

  const GithubButton({
    Key? key,
    this.onTap,
    required this.isNavigate,
    required this.onChangeNickname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToTheRegisterPage(context),
      child: _getIcon(radius: 55, size: 40),
    );
  }

  Widget _getIcon({required double radius, required double size}) => SocialIcon(
        radius: radius,
        backgroundColor: Colors.white,
        icon: Icon(FontAwesomeIcons.github, color: Colors.black, size: size),
        padding: const EdgeInsets.only(bottom: 2),
      );

  void goToTheRegisterPage(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (!isNavigate) return onTap?.call();
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (_) => RegisterSocialPage(
          registerWithSocial: onTap,
          onChangeNickname: onChangeNickname,
          socialIcon: _getIcon(radius: 120, size: 80),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final Widget icon;

  final EdgeInsetsGeometry? padding;

  final double radius;

  final Color backgroundColor;

  const SocialIcon({
    Key? key,
    required this.icon,
    this.padding,
    required this.backgroundColor,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: icon,
    );
  }
}
