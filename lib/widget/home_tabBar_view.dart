import 'package:flutter/material.dart';
import 'package:fly_ease_online_booking_app/utils/themeUtils.dart';
import 'package:fly_ease_online_booking_app/widget/oneWay_tabBarView.dart';

class HomeTabBarView extends StatefulWidget {
  const HomeTabBarView({super.key});

  @override
  State<HomeTabBarView> createState() => _HomeTabBarViewState();
}

class _HomeTabBarViewState extends State<HomeTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorColor: ThemeUtils.brandColor,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                "One Way",
                style: ThemeUtils.boardingNormalStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Round Trip",
                style: ThemeUtils.boardingNormalStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              const OneWayTabBarView(),
              Container(),
            ],
          ),
        )
      ],
    );
  }
}
