import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/components/button/login_signup_button.dart';
import 'package:fly_ease_online_booking_app/routes/routes.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verify your email address.",
                  style: ThemeUtils.boardingBoldStyle.copyWith(
                    color: ThemeUtils.brandColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "We have sent you a verification code to your email address. Please enter the code below.",
                  style: ThemeUtils.loginTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      margin: const EdgeInsets.only(left: 5),
                      width: 48,
                      height: 48,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ThemeUtils.textFieldBorderColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'By signing up, you agree to our',
                    style: ThemeUtils.boardingNormalStyle,
                    children: [
                      TextSpan(
                        text: ' terms and conditions',
                        style: ThemeUtils.boardingNormalStyle.copyWith(
                          color: const Color.fromRGBO(0, 117, 255, 1),
                        ),
                      ),
                      const TextSpan(text: '. View our'),
                      TextSpan(
                        text: ' privacy policy.',
                        style: ThemeUtils.boardingNormalStyle.copyWith(
                          color: const Color.fromRGBO(0, 117, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                LoginSignUpButton(
                  text: "Continue",
                  onPressed: () {
                    Get.toNamed(Routes.home);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
