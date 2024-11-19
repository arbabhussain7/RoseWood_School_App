import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/addNewUser/views/add_new_parent.dart';
import 'package:hla_app/Screens/Admins/addNewUser/views/add_new_students.dart';
import 'package:hla_app/Screens/Admins/addNewUser/views/add_new_teacher.dart';
import 'package:hla_app/Screens/Admins/usercategory/views/parent_user_detail.dart';
import 'package:hla_app/Screens/Admins/usercategory/views/student_user_detail.dart';
import 'package:hla_app/Screens/Admins/usercategory/views/teacher_user_detail.dart';
import 'package:hla_app/Screens/Admins/users/controllers/users_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class AUsersScreen extends GetView<UsersController> {
  const AUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  height: 36.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfSchedule.length,
                    itemBuilder: (context, index) {
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            controller.isSelectedIndex(index);
                          },
                          child: Container(
                            width: 92.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                                color: controller.isSelectedIndex == index
                                    ? primaryColor
                                    : ligherGreyColor,
                                borderRadius: BorderRadius.circular(100.r)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                listOfSchedule[index],
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    color: controller.isSelectedIndex == index
                                        ? ligherGreyColor
                                        : lightBlackColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 12.w,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                  child: Divider(
                    color: blackColor.withOpacity(0.04),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 275.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border: Border.all(color: lightwhiteColor)),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: greyColor),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 14.h),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                  "assets/icons/search-icons.svg"),
                            ),
                            hintText: controller.isSelectedIndex == 1
                                ? "Search Students"
                                : " Search Teacher ",
                            hintStyle: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: darkBlackColor.withOpacity(0.8)),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Container(
                      width: 52.w,
                      height: 52.h,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: SvgPicture.asset("assets/icons/filter-icon.svg"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Obx(
                  () {
                    if (controller.isSelectedIndex.value == 0) {
                      return StudentUserDetail(itemcount: 1);
                    } else if (controller.isSelectedIndex.value == 1) {
                      return TeacherUserDetail(itemcount: 3);
                    } else {
                      return ParentUserDetail(itemcount: 5);
                    }
                  },
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 171.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/add-icon.svg"),
                        SizedBox(
                          width: 12.w,
                        ),
                        Obx(
                          () {
                            if (controller.isSelectedIndex.value == 0) {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => AddNewStudents());
                                },
                                child: Text(
                                  "Add Student",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor),
                                ),
                              );
                            } else if (controller.isSelectedIndex.value == 1) {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => AddNewTeacher());
                                },
                                child: Text(
                                  "Add Teacher",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor),
                                ),
                              );
                            } else {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => AddNewParent());
                                },
                                child: Text(
                                  "Add Parent",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
