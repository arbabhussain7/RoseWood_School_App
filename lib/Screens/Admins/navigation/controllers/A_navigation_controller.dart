import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/Admins/home/views/admin_home_screen.dart';
import 'package:hla_app/Screens/Admins/schedule/views/A_schedule_screen.dart';
import 'package:hla_app/Screens/Admins/settings/views/A_setting_screen.dart';
import 'package:hla_app/Screens/Admins/users/views/A_users_screen.dart';

class ANavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> widgetList = [
    AdminHomeScreen(),
    AScheduleScreen(),
    AUsersScreen(),
    ASettingScreen()
  ];
  void isSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  void openDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    } else {
      print("Drawer can only be opened on the Home screen.");
    }
  }
}
