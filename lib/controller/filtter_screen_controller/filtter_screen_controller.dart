import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FiltterScreenController extends GetxController {
  SfRangeValues values = const SfRangeValues(0.0, 140000);

  num miniValue = 1000;
  num maxValues = 140000;

  void onValueChanges({required SfRangeValues values}) {
    this.values = values;
    update();
  }

  void onAountValueChanges({required num miniValue, required num maxVale}) {
    this.miniValue = miniValue;
    maxValues = maxVale;
    update();
  }
}
