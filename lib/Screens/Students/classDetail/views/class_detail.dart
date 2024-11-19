import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Students/classDetail/components/teacher_profile.dart';
import 'package:hla_app/Screens/Students/classDetail/views/class_detail_online.dart';

import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_button.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class ClassDetail extends StatelessWidget {
  const ClassDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              CustomHeader(
                text: "Today’s Classes",
              ),
              SizedBox(
                height: 42.h,
              ),
              Text(
                "App Development",
                style: GoogleFonts.inter(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBlackColor),
              ),
              SizedBox(
                height: 6.h,
              ),
              const TeacherProfile(),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 44.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: yellowlightColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mon - Thu",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                    ),
                    SizedBox(
                      width: 52.w,
                    ),
                    SvgPicture.asset(
                      "assets/icons/clock-icon.svg",
                      color: whiteColor,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "10:00 am - 11:00 am",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Class Type",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBlackColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Online",
                style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: primaryColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              const Spacer(),
              CustomButton(
                  text: "Start Class",
                  color: greyColor,
                  onpressed: () {
                    Get.to(() => const ClassDetailOnline());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
