import 'package:get/get.dart';

class MytaskController extends GetxController {
  var isSelectedTab = 0.obs;
  final RxInt selectedIndex = (-1).obs;
  void changeTab(int index) {
    isSelectedTab.value = index;
  }
}
