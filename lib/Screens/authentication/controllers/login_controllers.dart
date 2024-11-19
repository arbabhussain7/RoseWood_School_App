import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginControllers extends GetxController {
  var secureText = true.obs;
  RxBool isChecked = false.obs;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  void toggleSecureText() {
    secureText.value = !secureText.value;
  }
}
