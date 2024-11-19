import 'package:get/get.dart';
import 'package:hla_app/Screens/Teachers/navigation/controllers/navgation_controller.dart';

class TeacherController extends GetxController {
  var selectedTab = 0.obs;

  TNavgationController tNavgationController = Get.find<TNavgationController>();

  void changeTab(int index) {
    selectedTab.value = index;
  }
}
