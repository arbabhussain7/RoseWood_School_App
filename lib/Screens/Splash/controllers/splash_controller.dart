import 'package:get/get.dart';
import 'package:hla_app/Screens/Splash/views/select_categories.dart';

class SplashController extends GetxController {
  void initState() {
    initState();

    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(() => SelectCategories());
    });
  }
}
