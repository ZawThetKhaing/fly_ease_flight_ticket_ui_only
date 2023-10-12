import 'package:get/get.dart';

class HomePageController extends GetxController {
  final RxInt _homePageIndex = 0.obs;
  int get homePageIndex => _homePageIndex.value;

  void bottomNavigate(int value) {
    _homePageIndex.value = value;
  }

  final RxBool _showEconomyExpand = false.obs;
  bool get showEconomyExpand => _showEconomyExpand.value;

  void onTap(int index) {
    print("On Tap");
    _showEconomyExpand.value = !_showEconomyExpand.value;
    update(['show_economy_expand_$index']);
  }
}
