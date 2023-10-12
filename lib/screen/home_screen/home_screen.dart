import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/controller/home_page_controller.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/view/home_view.dart';
import 'package:fly_ease_online_booking_app/view/menu_view.dart';
import 'package:fly_ease_online_booking_app/view/my_bookings_view.dart';
import 'package:fly_ease_online_booking_app/view/notification_view.dart';
import 'package:get/get.dart';

List<Widget> views = [
  const HomeView(),
  const MyBookingsView(),
  const NotificationView(),
  const MenuView(),
];

class HomeScreen extends GetView<HomePageController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => views[controller.homePageIndex],
      ),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: const BottomNavigationBarThemeData(
          selectedItemColor: ThemeUtils.brandColor,
          unselectedItemColor: ThemeUtils.bottomNavigationBarColor,
          unselectedLabelStyle: ThemeUtils.boardingNormalStyle,
          showUnselectedLabels: true,
        ),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.homePageIndex,
            onTap: controller.bottomNavigate,
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'lib/assets/home/booking_icon.png',
                  color: controller.homePageIndex == 1
                      ? ThemeUtils.brandColor
                      : ThemeUtils.bottomNavigationBarColor,
                ),
                label: "My Bookings",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notification",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Menu",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
