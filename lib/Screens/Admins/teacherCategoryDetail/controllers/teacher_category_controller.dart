import 'package:get/get.dart';

class TeacherCategoryController extends GetxController {
  var isSelectedTeacherIndex = 0.obs;
  final RxInt selectedIndex = (-1).obs;
  var selectedOption = ''.obs;
  void changeTab(int index) {
    isSelectedTeacherIndex.value = index;
  }

  void selectMenuOption(String choice) {
    selectedOption.value = choice;
    switch (choice) {
      case 'View History':
        // Get.to(() => AWellnessPlanHistory());
        break;
      case 'Send Reminder':
        // Get.to(() => AWellnessPlanSettings());
        break;
    }
  }
}
