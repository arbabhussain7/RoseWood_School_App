import 'package:get/get.dart';

class UsersController extends GetxController {
  var isSelectedIndex = 0.obs;

  void changeTab(int index) {
    isSelectedIndex.value = index;
  }
}
