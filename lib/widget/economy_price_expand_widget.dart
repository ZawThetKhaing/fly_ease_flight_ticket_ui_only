import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/routes/routes.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:get/get.dart';

class EconomyPriceShowExpandWidget extends StatelessWidget {
  const EconomyPriceShowExpandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Economy ",
                  style: ThemeUtils.boardingNormalStyle.copyWith(
                    fontSize: 10,
                    color: ThemeUtils.bottomNavigationBarColor,
                  ),
                ),
                Text(
                  "MMK 180342",
                  style: ThemeUtils.homeNormalTextStyle.copyWith(
                    color: ThemeUtils.brandColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 95,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ThemeUtils.brandColor,
                  ),
                ),
                onPressed: () {
                  Get.toNamed(Routes.customerInformation);
                },
                child: const Text("Select"),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Economy ",
                  style: ThemeUtils.boardingNormalStyle.copyWith(
                    fontSize: 10,
                    color: ThemeUtils.bottomNavigationBarColor,
                  ),
                ),
                Text(
                  "MMK 180342",
                  style: ThemeUtils.homeNormalTextStyle.copyWith(
                    color: ThemeUtils.brandColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 95,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ThemeUtils.brandColor,
                  ),
                ),
                onPressed: () {
                  Get.toNamed(Routes.customerInformation);
                },
                child: const Text("Select"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
