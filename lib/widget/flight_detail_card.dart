import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/controller/home_page_controller.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/widget/economy_price_expand_widget.dart';
import 'package:get/get.dart';

class FlightDetailCard extends GetView<HomePageController> {
  final String flightLogo;
  final String companyName;
  final int ticketPrice;
  final String laggageDetails;
  final String departureTime;
  final String departureDate;
  final String estimateTravelTime;
  final String flightType;
  final String arrivalTime;
  final String arrivalDate;
  final int? totalPrice;

  final int index;

  /// Index for ui change
  const FlightDetailCard({
    super.key,
    required this.departureTime,
    required this.departureDate,
    required this.estimateTravelTime,
    required this.flightType,
    required this.arrivalTime,
    required this.arrivalDate,
    required this.flightLogo,
    required this.companyName,
    required this.ticketPrice,
    required this.laggageDetails,
    required this.index,
    this.totalPrice,
  });

  const FlightDetailCard.withTotal({
    super.key,
    required this.flightLogo,
    required this.companyName,
    required this.ticketPrice,
    required this.laggageDetails,
    required this.departureTime,
    required this.departureDate,
    required this.estimateTravelTime,
    required this.flightType,
    required this.arrivalTime,
    required this.arrivalDate,
    required this.totalPrice,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ///Flight Logo
                  Image.asset(
                    flightLogo,
                    width: 29,
                    height: 29,
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  ///Company Name
                  Text(companyName),
                ],
              ),

              /// Ticket Price
              Text("MMK $ticketPrice"),
            ],
          ),

          /// CalculateTravelTime
          Container(
            height: 32,
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      departureTime,
                      style: ThemeUtils.flightDestinationTextStyle,
                    ),
                    Text(
                      departureDate,
                      style: ThemeUtils.flightDestinationTextStyle
                          .copyWith(fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      estimateTravelTime,
                      style: ThemeUtils.flightDestinationTextStyle
                          .copyWith(fontSize: 10),
                    ),
                    Image.asset(
                      "lib/assets/home/line.png",
                    ),
                    Text(
                      flightType,
                      style: ThemeUtils.flightDestinationTextStyle
                          .copyWith(fontSize: 10),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arrivalTime,
                      style: ThemeUtils.flightDestinationTextStyle,
                    ),
                    Text(
                      arrivalDate,
                      style: ThemeUtils.flightDestinationTextStyle
                          .copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(
            height: 5,
          ),
          const SizedBox(
            height: 10,
          ),

          ///Laggage detail
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.luggage_outlined,
                    color: ThemeUtils.brandColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Baggage included",
                        style: ThemeUtils.boardingNormalStyle.copyWith(
                          fontSize: 10,
                          color: ThemeUtils.bottomNavigationBarColor,
                        ),
                      ),
                      Text(
                        laggageDetails,
                        style: ThemeUtils.boardingNormalStyle.copyWith(
                          fontSize: 10,
                          color: ThemeUtils.bottomNavigationBarColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 35,
                child: ElevatedButton(
                  style: ThemeUtils.seeDetailsStyle,
                  onPressed: () => controller.onTap(index),
                  child: const Text(
                    "See Details",
                  ),
                ),
              ),
            ],
          ),
          if (totalPrice != null) ...[
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total price",
                  style: ThemeUtils.boardingNormalStyle.copyWith(
                    color: ThemeUtils.homeRadioColor,
                  ),
                ),
                Text(
                  "MMK $totalPrice",
                  style: ThemeUtils.homeNormalTextStyle.copyWith(
                    color: ThemeUtils.brandColor,
                  ),
                ),
              ],
            )
          ],

          ///Economy Expand
          if (totalPrice == null) ...[
            GetBuilder<HomePageController>(
              id: "show_economy_expand_$index",
              builder: (ctx) {
                return ctx.showEconomyExpand
                    ? const EconomyPriceShowExpandWidget()
                    : const SizedBox();
              },
            )
          ]
        ],
      ),
    );
  }
}
