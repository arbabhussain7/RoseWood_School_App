import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/monthlyPlan/views/A_monthly_plan.dart';
import 'package:hla_app/Screens/Admins/navigation/controllers/A_navigation_controller.dart';
import 'package:hla_app/Screens/Admins/wellnessPlan/views/A_wellness_plan.dart';
import 'package:hla_app/Screens/constant/const.dart';

class ANavbarScreen extends GetView<ANavigationController> {
  const ANavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
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
                  iconPath: "assets/icons/schedule-icon.svg",
                  label: "Schedule",
                ),
                _buildNavItem(
                  index: 2,
                  iconPath: "assets/icons/users-icon.svg",
                  label: "Users",
                ),
                _buildNavItem(
                  index: 3,
                  iconPath: "assets/icons/setting-icon.svg",
                  label: "Settings",
                ),
              ],
            ),
          )),
      drawer: Drawer(
          backgroundColor: whiteColor,
          width: 229.w,
          child: SizedBox(
            width: 229.w,
            child: Column(
              children: [
                SizedBox(
                  height: 62.h,
                ),
                SizedBox(
                  width: 73.w,
                  height: 73.h,
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/teacher-img.png"),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Alexa Jhons",
                  style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: lightblackColor),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Divider(
                    color: blackColor.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => AMonthlyPlan());
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/calendar-icon.svg"),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "Monthly Plan",
                          style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: lightblackColor),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => AWellnessPlan());
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/wellness-icon.svg"),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "Wellness Forms",
                          style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: lightblackColor),
                        ),
                      ],
                    ),
                  ),
                )
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
          SizedBox(height: 12.h),
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
