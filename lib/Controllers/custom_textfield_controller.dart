// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CustomTextFieldController extends GetxController {
//   var text = ''.obs;
//   var obscureText = false.obs;
//   var secureText = false.obs;
//   RxBool isChecked = false.obs;
//   TextEditingController controller = TextEditingController();

//   void togglePasswordVisibility() {
//     secureText.value = !secureText.value;
//     obscureText.value = !obscureText.value;
//   }

//   void toggleCheckbox(bool? newValue) {
//     isChecked.value = newValue ?? false;
//   }

//   @override
//   void onClose() {
//     controller.dispose();
//     super.onClose();
//   }
// }
