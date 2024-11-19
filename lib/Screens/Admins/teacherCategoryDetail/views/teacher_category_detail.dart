import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/teacherCategoryDetail/components/teacher_category_history_items.dart';
import 'package:hla_app/Screens/Admins/teacherCategoryDetail/components/teacher_category_profile_items.dart';
import 'package:hla_app/Screens/Admins/teacherCategoryDetail/components/teacher_category_task_items.dart';
import 'package:hla_app/Screens/Admins/teacherCategoryDetail/components/teacher_category_timetable_items.dart';
import 'package:hla_app/Screens/Admins/teacherCategoryDetail/controllers/teacher_category_controller.dart';

import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class TeacherCategoryDetail extends GetView<TeacherCategoryController> {
  const TeacherCategoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child:
                          SvgPicture.asset("assets/icons/back-arrow-com.svg")),
                  Text(
                    "Adela Parkson",
                    style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                  PopupMenuButton<String>(
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.r),
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r))),

                    icon: SvgPicture.asset(
                        "assets/icons/menus-icons.svg"), // Menu icon
                    onSelected: (String choice) {
                      controller.selectMenuOption(choice);
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem<String>(
                          value: 'View History',
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                              'View History',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: lightblackColor),
                            ),
                          ),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Send Reminder',
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                              'Send Reminder',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: lightblackColor),
                            ),
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                height: 43.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listOfTeacherDetailProfile.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.isSelectedTeacherIndex.value = index;
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            children: [
                              Text(
                                listOfTeacherDetailProfile[index],
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      controller.isSelectedTeacherIndex.value ==
                                              index
                                          ? primaryColor
                                          : greyColor,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                width: 60.w,
                                height: 2,
                                decoration: BoxDecoration(
                                  color:
                                      controller.isSelectedTeacherIndex.value ==
                                              index
                                          ? primaryColor
                                          : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 6.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(
                () {
                  if (controller.isSelectedTeacherIndex.value == 0) {
                    return TeacherCategoryProfileItems();
                  } else if (controller.isSelectedTeacherIndex.value == 1) {
                    return TeacherCategoryTimetableItems();
                  } else if (controller.isSelectedTeacherIndex.value == 2) {
                    return TeacherCategoryTaskItems();
                  } else {
                    return TeacherCategoryHistoryItems();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
