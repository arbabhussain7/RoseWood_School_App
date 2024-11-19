import 'package:get/get.dart';

class ParentHomeController extends GetxController {
  var isDropdownOpen = false.obs;
  var isAlexaSelected = false.obs;
  var isNataliaSelected = false.obs;

  var isSelectedOption = 'All'.obs;
  void setSelectedOption(String option) {
    isSelectedOption.value = option;
  }

  void toggleDropdown() {
    isDropdownOpen.value = !isDropdownOpen.value;
  }

  void selectAlexa() {
    isAlexaSelected.value = true;
    isNataliaSelected.value = false;
  }

  void selectNatalia() {
    isAlexaSelected.value = false;
    isNataliaSelected.value = true;
  }
}
