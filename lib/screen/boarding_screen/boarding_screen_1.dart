import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/controller/boarding_controller.dart';
import 'package:fly_ease_online_booking_app/routes/routes.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:get/get.dart';

List<Widget> _boardingView = [
  const BoardingView(
    frontPhoto: "lib/assets/boarding/boarding_1.png",
    photoWidth: 514,
    photoHeight: 330,
    titleText1: "Discover Flights to",
    titleText2: " Any Destination",
    bodyText1: ' Explore a vast selection of flights to your dream ',
    bodyText2: 'destinations, handpicked for you.',
  ),
  const BoardingView(
    frontPhoto: "lib/assets/boarding/boarding_2.png",
    photoWidth: 203,
    photoHeight: 330,
    titleText1: " Seamless Booking,",
    titleText2: " Unforgettable Journeys",
    bodyText1: ' Experience hassle-free flight booking and embark',
    bodyText2: ' on unforgettable journeys with ease.',
  ),
  const BoardingView(
    frontPhoto: "lib/assets/boarding/boarding_3.png",
    photoWidth: 243,
    photoHeight: 330,
    titleText1: "Uncover Hidden Gems",
    titleText2: " with Insider Tips",
    bodyText1: ' Uncover hidden gems worldwide with insider tips',
    bodyText2: ' and local recommendations.',
  ),
];

class BoardingScreen extends GetView<BoardingController> {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Obx(
            () => _boardingView[controller.index],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.index == 0
                            ? ThemeUtils.brandColor
                            : ThemeUtils.unselectedColor,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.index == 1
                            ? ThemeUtils.brandColor
                            : ThemeUtils.unselectedColor,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.index == 2
                            ? ThemeUtils.brandColor
                            : ThemeUtils.unselectedColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: context.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      ThemeUtils.brandColor,
                    ),
                  ),
                  onPressed: () {
                    if (controller.index == 2) {
                      Get.offNamed(Routes.login);
                    } else {
                      controller.next();
                    }
                  },
                  child: Obx(
                    () => Text(controller.index != 2 ? "Next" : "Get Started"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BoardingView extends StatelessWidget {
  final String frontPhoto;
  final double photoWidth;
  final double photoHeight;
  final String titleText1;
  final String titleText2;
  final String bodyText1;
  final String bodyText2;
  const BoardingView({
    super.key,
    required this.frontPhoto,
    required this.photoWidth,
    required this.photoHeight,
    required this.titleText1,
    required this.titleText2,
    required this.bodyText1,
    required this.bodyText2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "lib/assets/boarding/boarding_frame.png",
                width: 320,
                height: 210,
              ),
              Image.asset(
                frontPhoto,
                width: photoWidth,
                height: photoHeight,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Text(
              titleText1,
              style: ThemeUtils.boardingBoldStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              titleText2,
              style: ThemeUtils.boardingBoldStyle,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Column(
          children: [
            Text(
              bodyText1,
              style: ThemeUtils.boardingNormalStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              bodyText2,
              style: ThemeUtils.boardingNormalStyle,
            ),
          ],
        ),
      ],
    );
  }
}
