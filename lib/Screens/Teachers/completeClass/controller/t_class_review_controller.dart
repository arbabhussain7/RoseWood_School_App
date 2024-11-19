import 'package:get/get.dart';

class TClassReviewController extends GetxController {
  var currentStep = 1.obs;
  var isSelected = (-1).obs;
  final int totalSteps = 6;

  void nextStep() {
    if (currentStep.value < totalSteps) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 1) {
      currentStep.value--;
    }
  }

  void changeTab(int index) {
    isSelected.value = index;
  }
}
