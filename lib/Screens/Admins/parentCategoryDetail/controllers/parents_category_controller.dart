import 'package:get/get.dart';

class ParentsCategoryController extends GetxController {
  var isSelectedTeacherIndex = 0.obs;
  var isSelectedOption = 'All'.obs;
  final RxInt selectedIndex = (-1).obs;
  void changeTab(int index) {
    isSelectedTeacherIndex.value = index;

    void setSelectedOption(String option) {
      isSelectedOption.value = option;
    }
  }
}
