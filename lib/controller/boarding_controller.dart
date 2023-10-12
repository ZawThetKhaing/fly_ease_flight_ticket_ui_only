import 'package:get/get.dart';

class BoardingController extends GetxController {
  final RxInt _index = 0.obs;
  int get index => _index.value;

  void next() {
    if (index == 2) return;
    _index.value++;
  }
}
