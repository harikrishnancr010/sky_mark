import 'package:get/get.dart';

class SelectCountryScreenController extends GetxController {
  bool islading = true;

  void isLoading() async {
    islading = true;
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      islading = false;
    });
    update();
  }
}
