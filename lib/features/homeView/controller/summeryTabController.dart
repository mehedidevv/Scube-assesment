
import 'package:get/get.dart';

class SummaryTabController extends GetxController {

  var isSourceSelected = true.obs;

  void selectSource() => isSourceSelected.value = true;
  void selectLoad() => isSourceSelected.value = false;

  /// 0 = Summary, 1 = SLD, 2 = Data
  final selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
