import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/task/views/assign_task.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_teacher.dart';

class TeacherCategoryTaskItems extends StatelessWidget {
  const TeacherCategoryTaskItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "All",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: lightblackColor),
              ),
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset("assets/icons/dropdown-icon.svg"),
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          SizedBox(
            height: 542.h,
            child: ListView.separated(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  width: 335.w,
                  height: 228.h,
                  decoration: BoxDecoration(
                      color: lightwhiteColor,
                      border: Border.all(color: blackColor.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(16.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Give Lecture on Javascript",
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: lightblackColor),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          "You have to take an extra class and give a lecture on the basics of javascript",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: darkBlackColor.withOpacity(0.8)),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          "Assigned to",
                          style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomTeacher(),
                        SizedBox(height: 35.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "21 Jan, 2024 ",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: darkBlackColor.withOpacity(0.8)),
                            ),
                            Text(
                              "Completed",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: darkGreenColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 22.h,
                );
              },
            ),
          ),
          // Spacer(),
          SizedBox(
            height: 8.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => AssignTask());
            },
            child: Align(
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
                    Text(
                      "Assign new Task",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
