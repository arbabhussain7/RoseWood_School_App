import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/components/student_category_history_items.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/components/student_category_report_items.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/components/student_category_timetable_items.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/controllers/user_detail_profile_controller.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/components/student_category_profile_items.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class StudentCategoryDetails extends GetView<StudentCategoryController> {
  const StudentCategoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              CustomHeader(text: "Adela Parkson"),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 43.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listOfStudentDetailProfile.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.isSelectedTabIndex.value = index;
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            children: [
                              Text(
                                listOfStudentDetailProfile[index],
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: controller.isSelectedTabIndex.value ==
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
                                  color: controller.isSelectedTabIndex.value ==
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
                  if (controller.isSelectedTabIndex.value == 0) {
                    return StudentCategoryProfileItems();
                  } else if (controller.isSelectedTabIndex.value == 1) {
                    return StudentCategoryTimetableItems();
                  } else if (controller.isSelectedTabIndex.value == 2) {
                    return StudentCategoryReportItems();
                  } else {
                    return StudentCategoryHistoryItems();
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
