import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Students/classDetail/components/teacher_profile.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_button.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class ClassDetailOffsite extends StatelessWidget {
  const ClassDetailOffsite({super.key});

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
                "Off-Site ",
                style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: primaryColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/map-icon.svg"),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text(
                    "View on Maps",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: yellowlightColor),
                  )
                ],
              ),
              const Spacer(),
              CustomButton(
                  text: "Start Class", color: primaryColor, onpressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
