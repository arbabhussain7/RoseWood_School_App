import 'package:get/get.dart';

import 'package:hla_app/Screens/Admins/wellnessPlan/views/A_wellness_plan_history.dart';
import 'package:hla_app/Screens/Admins/wellnessPlan/views/A_wellness_plan_settings.dart';

class AWellnessPlanControllers extends GetxController {
  var selectedOption = ''.obs;
  var isSelectedOption = 'All'.obs;

  void setSelectedOption(String option) {
    isSelectedOption.value = option;
  }

  void selectMenuOption(String choice) {
    selectedOption.value = choice;
    switch (choice) {
      case 'View History':
        Get.to(() => AWellnessPlanHistory());
        break;
      case 'Send Reminder':
        Get.to(() => AWellnessPlanSettings());
        break;
    }
  }
}
