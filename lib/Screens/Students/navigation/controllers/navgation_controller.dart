import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/Students/home/views/student_home_screen.dart';
import 'package:hla_app/Screens/Students/messages/views/message_screen.dart';
import 'package:hla_app/Screens/Students/profile/views/profile_screen.dart';
import 'package:hla_app/Screens/Students/timetable/views/timetable_screen.dart';

class NavgationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> widgetList = [
    StudentHomeScreen(),
    TimetableScreen(),
    const MessageScreen(),
    const ProfileScreen()
  ];
  void isSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
