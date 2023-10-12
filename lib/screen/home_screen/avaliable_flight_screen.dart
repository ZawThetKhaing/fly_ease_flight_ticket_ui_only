import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/widget/flight_detail_card.dart';
import 'package:get/get.dart';

class AvaliableFlightScreen extends StatelessWidget {
  const AvaliableFlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
            color: ThemeUtils.brandColor,
          ),
        ),
        title: Text(
          ///ToDo : Avaliable Flights
          "3 flights found",
          style: ThemeUtils.loginTextStyle.copyWith(
            color: ThemeUtils.brandColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          Container(
            height: 80,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///Where to ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Yangon(RGN)",
                          style: ThemeUtils.flightDestinationTextStyle,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                        ),
                        Text(
                          "Bangkok(BKK)",
                          style: ThemeUtils.flightDestinationTextStyle,
                        ),
                      ],
                    ),
                    Icon(Icons.edit_location_outlined)
                  ],
                ),

                ///Booking Date
                Text("Sun,12 Jun 2023"),

                ///Passengers
                Text("1 Passenger"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 13.5,
                  height: 13.5,
                  child: Checkbox(
                    side: const BorderSide(color: ThemeUtils.brandColor),
                    activeColor: ThemeUtils.brandColor,
                    value: false,
                    onChanged: (a) {},
                  ),
                ),
                Text(
                  "Start from lowest price",
                  style: ThemeUtils.flightDestinationTextStyle.copyWith(
                    color: ThemeUtils.brandColor,
                  ),
                ),
              ],
            ),
          ),

          ///ToDo Flight List
          const FlightDetailCard(
            /// Index for ui change
            index: 1,
            departureTime: "9:40 AM",
            departureDate: "12 Jun",
            estimateTravelTime: "1h 20m",
            flightType: "Direct flight",
            arrivalTime: "11:30 AM",
            arrivalDate: "12 Jun",

            ///Image from assets for ui only
            flightLogo: "lib/assets/home/air_asia.png",
            companyName: "Thai Air Asia",
            ticketPrice: 108671,
            laggageDetails: "5kg hand-carry, 20kg baggage",
          ),

          const FlightDetailCard(
            /// Index for ui change
            index: 2,

            departureTime: "9:40 AM",
            departureDate: "12 Jun",
            estimateTravelTime: "1h 20m",
            flightType: "Direct flight",
            arrivalTime: "11:30 AM",
            arrivalDate: "12 Jun",

            ///Image from assets for ui only
            flightLogo: "lib/assets/home/myanmar_air.png",
            companyName: "Myanmar Airways",
            ticketPrice: 118587,
            laggageDetails: "5kg hand-carry, 20kg baggage",
          ),

          const FlightDetailCard(
            /// Index for ui change
            index: 3,

            departureTime: "11:20 AM",
            departureDate: "12 Jun",
            estimateTravelTime: "1h 20m",
            flightType: "Direct flight",
            arrivalTime: "13:20 AM",
            arrivalDate: "12 Jun",

            ///Image from assets for ui only
            flightLogo: "lib/assets/home/thai_air.png",
            companyName: "Thai Airways",
            ticketPrice: 309480,
            laggageDetails: "5kg hand-carry, 20kg baggage",
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              children: [
                const Icon(
                  Icons.check_circle_sharp,
                  color: ThemeUtils.brandColor,
                ),
                Text(
                  "You are at the end of list.",
                  style: ThemeUtils.boardingNormalStyle.copyWith(
                    color: ThemeUtils.homeRadioColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
