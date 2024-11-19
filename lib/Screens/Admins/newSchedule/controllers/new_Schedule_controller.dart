import 'package:get/get.dart';

class NewScheduleController extends GetxController {
  var classTitle = ''.obs;
  var isSelectedTab = 0.obs;
  RxBool isSelectedOption = false.obs;

  void updateClassTitle(String value) {
    classTitle.value = value;
  }

  var selectedDaysIndex = <int>[].obs;
  var isRepeatMonthly = false.obs;

  final RxInt selectedIndex = (-1).obs;
  void switchChange(bool value) {
    isSelectedOption.value = value;
  }

  void changeTab(int index) {
    isSelectedTab.value = index;
  }

  void toggleDaySelection(int index) {
    if (selectedDaysIndex.contains(index)) {
      selectedDaysIndex.remove(index);
    } else {
      selectedDaysIndex.add(index);
    }
  }

  // Toggle the repeat monthly option
  void toggleRepeatMonthly(bool value) {
    isRepeatMonthly.value = value;
  }
}
