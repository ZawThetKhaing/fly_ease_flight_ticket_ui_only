import 'package:fly_ease_online_booking_app/controller/boarding_controller.dart';
import 'package:get/get.dart';

class BoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoardingController());
  }
}
