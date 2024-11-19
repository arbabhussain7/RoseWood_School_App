import 'package:get/get.dart';
import 'package:hla_app/Screens/Admins/monthlyPlan/views/A_monthly_plan_history.dart';
import 'package:hla_app/Screens/Admins/monthlyPlan/views/A_monthly_plan_settings.dart';

class AMonthlyPlanControllers extends GetxController {
  var selectedOption = ''.obs; 
  var isSelectedOption = 'All'.obs;

  void setSelectedOption(String option) {
    isSelectedOption.value = option;
  }

  void selectMenuOption(String choice) {
    selectedOption.value = choice;
    switch (choice) {
      case 'View History':
        Get.to(() => AMonthlyPlanHistory()); 
        break;
      case 'Send Reminder':
        Get.to(() => AMonthlyPlanSettings()); 
        break;
    }
  }
}
