import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/routes/routes.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/widget/flight_dateTime_picker.dart';
import 'package:fly_ease_online_booking_app/widget/flight_ticket_form_field.dart';
import 'package:fly_ease_online_booking_app/widget/home_radio_button.dart';
import 'package:get/get.dart';

class OneWayTabBarView extends StatelessWidget {
  const OneWayTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          const FlightTicketFormField(
            hintText: "From?",
            prefixIcon: Icon(
              Icons.flight_takeoff_rounded,
            ),
          ),
          const FlightTicketFormField(
            hintText: "Where to?",
            prefixIcon: Icon(
              Icons.flight_land,
            ),
          ),

          ///DateTime Picker
          const FlightDateTimePicker(),

          const FlightTicketFormField(
            hintText: "1 Passenger",
            prefixIcon: Icon(
              Icons.person,
            ),
          ),

          const HomeRadioButton(),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                ThemeUtils.brandColor,
              ),
            ),
            onPressed: () {
              Get.toNamed(Routes.avaliableFlight);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.search,
                  size: 16,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Search",
                  style: ThemeUtils.boardingNormalStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
