import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/task/components/custom_confirm_button.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class TSubmittedWellnessForm extends StatelessWidget {
  const TSubmittedWellnessForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                CustomHeader(text: "Wellness"),
                Center(
                  child: Text(
                    "Pending",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Field 1",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 54.h,
                  padding: EdgeInsets.only(left: 18.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: lightwhiteColor),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ],
                      color: whiteColor),
                  child: TextFormField(
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: greyColor),
                    decoration: InputDecoration(
                        hintText: "Enter Information",
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: greyColor),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Field  2",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 93.h,
                  padding: EdgeInsets.only(left: 18.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: lightwhiteColor),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ],
                      color: whiteColor),
                  child: TextFormField(
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: greyColor),
                    decoration: InputDecoration(
                        hintText: "Enter Information",
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: greyColor),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Field  2",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 93.h,
                  padding: EdgeInsets.only(left: 18.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: lightwhiteColor),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ],
                      color: whiteColor),
                  child: TextFormField(
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: greyColor),
                    decoration: InputDecoration(
                        hintText: "Enter Information",
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: greyColor),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Field  2",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 93.h,
                  padding: EdgeInsets.only(left: 18.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: lightwhiteColor),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ],
                      color: whiteColor),
                  child: TextFormField(
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: greyColor),
                    decoration: InputDecoration(
                        hintText: "Enter Information",
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: greyColor),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 154.h,
                ),
                Center(child: ConfirmButton(text: "Submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
