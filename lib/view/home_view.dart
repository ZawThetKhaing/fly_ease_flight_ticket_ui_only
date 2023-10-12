import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/widget/home_tabBar_view.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: context.height * 0.82,
            ),

            ///Gradient Box

            Positioned(
              child: Container(
                height: 290,
                decoration:
                    const BoxDecoration(gradient: ThemeUtils.homeTopGradient),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, top: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to AirEase ',
                            style: ThemeUtils.loginTextStyle
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Kaung Myat Moee Htoon',
                            style: ThemeUtils.boardingBoldStyle
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),

                      ///Profile Photo
                      CircleAvatar(
                        child: Image.asset(
                          "lib/assets/home/home_avatar.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: context.height * 0.17,
              // left: context.width / 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      " Search flights",
                      style: ThemeUtils.homeNormalTextStyle,
                    ),
                    Card(
                      elevation: 3,
                      child: Container(
                        height: 400,
                        width: context.width - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const HomeTabBarView(),
                      ),
                    ),

                    // /Advertising photo
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: context.width,
          height: 150,

          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset(
            'lib/assets/home/advitising_photo.png',
          ),
          // color: ThemeUtils.brandColor,
        ),
        const SizedBox(
          height: 10,
        ),

        ///More for you
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("More for you"),
              SizedBox(
                width: context.width - 40,
                height: 400,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (_, i) => Container(
                    height: 200,
                    width: 170,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          color: ThemeUtils.brandColor,
                        ),
                        const Text(
                          "Your summer bucket list: 7 must-do experiences for an adventure of a lifetime",
                          textAlign: TextAlign.center,
                          style: ThemeUtils.boardingNormalStyle,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
