import 'package:get/state_manager.dart';

class BottomNavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  void onNavChanged(int value) {
    currentIndex.value = value;
  }
}
