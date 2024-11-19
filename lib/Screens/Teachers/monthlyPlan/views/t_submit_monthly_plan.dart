import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/task/components/custom_confirm_button.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class TSubmitMonthlyPlan extends StatelessWidget {
  const TSubmitMonthlyPlan({super.key});

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
              CustomHeader(text: "Monthly Plan"),
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
                height: 28.h,
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
                      "Planning template.pdf",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: lightblackColor),
                    ),
                    SizedBox(
                      width: 112.w,
                    ),
                    SvgPicture.asset("assets/icons/download-icon.svg"),
                  ],
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              Text(
                "Upload Your Monthly Planning",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 335.w,
                height: 56.h,
                decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(color: cWhiteColor),
                    borderRadius: BorderRadius.circular(13.65.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
                  child: Text(
                    "+ Select a file to upload",
                    style: GoogleFonts.montserrat(
                        fontSize: 12.w,
                        fontWeight: FontWeight.w500,
                        color: greyColor),
                  ),
                ),
              ),
              Spacer(),
              ConfirmButton(text: "Submit"),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
