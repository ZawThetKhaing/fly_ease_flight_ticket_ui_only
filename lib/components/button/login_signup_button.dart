import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';

class LoginSignUpButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const LoginSignUpButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                ThemeUtils.brandColor,
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: ThemeUtils.loginTextStyle.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
