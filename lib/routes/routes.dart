import 'package:fly_ease_online_booking_app/bindings/boarding_binding.dart';
import 'package:fly_ease_online_booking_app/bindings/homePage_binding.dart';
import 'package:fly_ease_online_booking_app/screen/boarding_screen/boarding_screen_1.dart';
import 'package:fly_ease_online_booking_app/screen/home_screen/avaliable_flight_screen.dart';
import 'package:fly_ease_online_booking_app/screen/home_screen/customer_information.dart';
import 'package:fly_ease_online_booking_app/screen/home_screen/home_screen.dart';
import 'package:fly_ease_online_booking_app/screen/login_screen/login_screen.dart';
import 'package:fly_ease_online_booking_app/screen/signup_screen/create_password_screen.dart';
import 'package:fly_ease_online_booking_app/screen/signup_screen/email_enter_screen.dart';
import 'package:fly_ease_online_booking_app/screen/signup_screen/sign_up_screen.dart';
import 'package:fly_ease_online_booking_app/screen/signup_screen/verify_email_screen.dart';
import 'package:get/get.dart';

abstract class Routes {
  static String boarding = '/boarding';
  static String login = '/login';
  static String signup = '/signup';
  static String emailEnter = '/emailEnter';
  static String createPassword = '/createPassword';
  static String verifyEmail = '/verifyEmail';
  static String home = '/home';
  static String avaliableFlight = '/avaliableFlight';
  static String customerInformation = '/customerInformation';

  static List<GetPage> routes = [
    GetPage(
      name: boarding,
      page: () => const BoardingScreen(),
      bindings: [
        BoardingBinding(),
      ],
    ),
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: signup,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: emailEnter,
      page: () => const EmailEnterScreen(),
    ),
    GetPage(
      name: createPassword,
      page: () => const CreatePasswordScreen(),
    ),
    GetPage(
      name: verifyEmail,
      page: () => const VerifyEmailScreen(),
    ),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: avaliableFlight,
      page: () => const AvaliableFlightScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: customerInformation,
      page: () => const CustomerInformation(),
      bindings: [
        HomePageBinding(),
      ],
    ),
  ];
}
