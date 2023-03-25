import 'package:get/get.dart';

class CourcesDetailController extends GetxController {
  RxInt currentIndexFeild = 0.obs;

  void onCurrentFeildChanges({required int index}) {
    currentIndexFeild.value = index;
  }
}
