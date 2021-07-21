import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GoogleButton(onTap: () {}),
        const FacebookButton(),
        MicrosoftButton(onTap: () {}),
      ],
    );
  }
}

class FacebookButton extends StatelessWidget {
  static const colorTwitter = Color(0xff1D9BF0);

  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
        width: 55,
        height: 55,
        margin: const EdgeInsets.only(top: 35.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: colorTwitter,
        ),
        child: const Icon(
          FontAwesomeIcons.twitter,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  static const colorGoogle = Color(0xffDB3D29);
  final void Function() onTap;
  const GoogleButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 55,
        height: 55,
        margin: const EdgeInsets.only(top: 35.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: colorGoogle,
        ),
        child: const Icon(
          FontAwesomeIcons.google,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}

class MicrosoftButton extends StatelessWidget {
  static const colorMicrosof = Color(0xff2E353F);
  final void Function() onTap;
  const MicrosoftButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 55,
        height: 55,
        margin: const EdgeInsets.only(top: 35.0),
        padding: const EdgeInsets.only(bottom: 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: const Icon(
          FontAwesomeIcons.github,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
