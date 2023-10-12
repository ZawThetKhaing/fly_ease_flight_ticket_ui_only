import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/components/button/login_signup_button.dart';
import 'package:fly_ease_online_booking_app/components/login_components/login_with_button.dart';
import 'package:fly_ease_online_booking_app/routes/routes.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "lib/assets/login/login_photo.png",
            width: 442,
            height: 280,
          ),
          const SizedBox(
            height: 25,
          ),
          LoginWithButton(
            icon: Icons.facebook,
            text: "Continue with Facebook",
            backgroundColor: Colors.blue,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          LoginWithButton(
            googlePath: "lib/assets/login/Google.png",
            text: "Continue with Google",
            backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
            foregroundColor: Colors.black,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          LoginWithButton(
            icon: Icons.apple,
            text: "Continue with Apple",
            backgroundColor: Colors.black,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          LoginWithButton(
            icon: Icons.email,
            text: "Sign Up with Email",
            backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
            foregroundColor: Colors.black,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.signup);
            },
            child: Text(
              "Already have an account?",
              style: ThemeUtils.loginTextStyle.copyWith(
                color: const Color.fromRGBO(63, 63, 63, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: LoginSignUpButton(
              onPressed: () {
                Get.toNamed(Routes.home);
              },
              text: "Login",
            ),
          ),
        ],
      ),
    );
  }
}
