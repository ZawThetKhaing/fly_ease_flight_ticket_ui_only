import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';

class LoginWithButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? googlePath;
  final void Function()? onPressed;
  const LoginWithButton({
    super.key,
    this.icon,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
    required this.onPressed,
    this.googlePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            icon == null
                ? Image.asset(googlePath ?? '')
                : Icon(
                    icon,
                  ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: ThemeUtils.loginTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
