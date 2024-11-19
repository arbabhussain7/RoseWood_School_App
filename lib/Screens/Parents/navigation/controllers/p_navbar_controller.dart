import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/Parents/home/views/parent_home_screen.dart';
import 'package:hla_app/Screens/Parents/profile/views/p_profile.dart';
import 'package:hla_app/Screens/Parents/timetable/views/p_timetable.dart';

class PNavbarController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> widgetList = [ParentHomeScreen(), PTimetable(), PProfile()];
  void isSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
