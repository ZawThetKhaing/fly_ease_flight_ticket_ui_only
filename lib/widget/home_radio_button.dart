import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';

enum Nationality { myanmarCitizen, forienger }

class HomeRadioButton extends StatefulWidget {
  const HomeRadioButton({super.key});

  @override
  State<HomeRadioButton> createState() => _HomeRadioButtonState();
}

class _HomeRadioButtonState extends State<HomeRadioButton> {
  Nationality _nationality = Nationality.myanmarCitizen;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<Nationality>(
          fillColor: MaterialStateProperty.all(ThemeUtils.brandColor),
          activeColor: ThemeUtils.brandColor,
          value: Nationality.myanmarCitizen,
          groupValue: _nationality,
          onChanged: (Nationality? value) {
            setState(
              () {
                _nationality = value!;
              },
            );
          },
        ),
        Text(
          "Myanmar citizen",
          style: ThemeUtils.boardingNormalStyle.copyWith(
            color: ThemeUtils.homeRadioColor,
          ),
        ),
        Radio<Nationality>(
          fillColor: MaterialStateProperty.all(ThemeUtils.brandColor),
          activeColor: ThemeUtils.brandColor,
          value: Nationality.forienger,
          groupValue: _nationality,
          onChanged: (Nationality? value) {
            setState(() {
              _nationality = value!;
            });
          },
        ),
        Text(
          "Foreinger",
          style: ThemeUtils.boardingNormalStyle.copyWith(
            color: ThemeUtils.homeRadioColor,
          ),
        ),
      ],
    );
  }
}
