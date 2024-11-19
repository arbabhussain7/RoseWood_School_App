import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddnewuserController extends GetxController {
  var secureText = true.obs;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  void toggleSecureText() {
    secureText.value = !secureText.value;
  }
}
