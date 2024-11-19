import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

class ASettingScreen extends StatelessWidget {
  const ASettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Settings",
                style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: darkBlackColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 54.h,
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: lightwhiteColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: lightblackColor),
                    ),
                    SvgPicture.asset("assets/icons/forward-arrow-icons.svg")
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 54.h,
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: lightwhiteColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notification Preferences",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: lightblackColor),
                    ),
                    SvgPicture.asset("assets/icons/forward-arrow-icons.svg")
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 54.h,
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: lightwhiteColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Change Password",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: lightblackColor),
                    ),
                    SvgPicture.asset("assets/icons/forward-arrow-icons.svg")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
