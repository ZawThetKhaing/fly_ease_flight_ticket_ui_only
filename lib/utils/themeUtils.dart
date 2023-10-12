import 'package:flutter/material.dart';

abstract class ThemeUtils {
  static const Color brandColor = Color.fromRGBO(255, 73, 32, 1);
  static const Color unselectedColor = Color.fromRGBO(255, 225, 218, 1);
  static const Color textFieldBorderColor = Color.fromRGBO(214, 214, 214, 1);
  static const Color textFormFieldHintColor = Color.fromRGBO(214, 214, 214, 1);
  static const Color homeRadioColor = Color.fromRGBO(63, 63, 63, 1);
  static const Color bottomNavigationBarColor =
      Color.fromRGBO(129, 129, 129, 1);

  static ButtonStyle seeDetailsStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(
      unselectedColor,
    ),
    foregroundColor: MaterialStateProperty.all(
      brandColor,
    ),
    textStyle: MaterialStateProperty.all(
      boardingNormalStyle.copyWith(
        fontSize: 10,
      ),
    ),
  );

  static const LinearGradient homeTopGradient = LinearGradient(
    colors: [
      Color.fromRGBO(255, 161, 140, 1),
      Color.fromRGBO(255, 195, 139, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const TextStyle boardingBoldStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  static const TextStyle boardingNormalStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );

  static const TextStyle flightDestinationTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: homeRadioColor,
  );

  static const TextStyle textFormFieldHintStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: textFormFieldHintColor,
  );
  static const TextStyle loginTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle homeNormalTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
