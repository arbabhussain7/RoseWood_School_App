import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class AWellnessPlanSettings extends StatelessWidget {
  const AWellnessPlanSettings({super.key});

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
              CustomHeader(text: "Wellness Settings"),
              SizedBox(
                height: 28.h,
              ),
              Text(
                "Wellness Form",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 56.h,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(13.r),
                    border: Border.all(color: cWhiteColor)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 22.w,
                    ),
                    SvgPicture.asset("assets/icons/pdf-icon.svg"),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "forms.google.wellness.example",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: lightblackColor),
                    ),
                    SizedBox(
                      width: 45.w,
                    ),
                    SvgPicture.asset("assets/icons/edit-icons.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
