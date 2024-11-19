import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/Teachers/home/views/teacher_home_screen.dart';
import 'package:hla_app/Screens/Teachers/messages/views/t_messages_screen.dart';
import 'package:hla_app/Screens/Teachers/profile/views/t_profile_screen.dart';
import 'package:hla_app/Screens/Teachers/timetable/views/t_timetable_screen.dart';

class TNavgationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> widgetList = [
    TeacherHomeScreen(),
    TTimetableScreen(),
    TMessagesScreen(),
    TProfileScreen()
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
