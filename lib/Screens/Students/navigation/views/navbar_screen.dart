import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/Students/navigation/controllers/navgation_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarScreen extends GetView<NavgationController> {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Obx(() {
        return controller.widgetList[controller.selectedIndex.value];
      }),
      bottomNavigationBar: Obx(() => Container(
            width: 375.w,
            height: 69.h,
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.03),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(0, -10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(
                  index: 0,
                  iconPath: "assets/icons/home-icon.svg",
                  label: "Home",
                ),
                _buildNavItem(
                  index: 1,
                  iconPath: "assets/icons/timetable-icon.svg",
                  label: "TimeTable",
                ),
                _buildNavItem(
                  index: 2,
                  iconPath: "assets/icons/messages-icon.svg",
                  label: "Chats",
                ),
                _buildNavItem(
                  index: 3,
                  iconPath: "assets/icons/profile-icon.svg",
                  label: "Profile",
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String iconPath,
    required String label,
  }) {
    return GestureDetector(
      onTap: () => controller.isSelectedIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          SvgPicture.asset(
            iconPath,
            color: controller.selectedIndex.value == index
                ? primaryColor
                : greyColor,
          ),
          SizedBox(height: 12.h),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: controller.selectedIndex.value == index
                  ? primaryColor
                  : greyColor,
            ),
          ),
          SizedBox(
            height: 6.h,
          )
        ],
      ),
    );
  }
}
