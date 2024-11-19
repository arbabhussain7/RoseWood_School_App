import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/monthlyPlan/views/A_monthly_plan_settings.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class AMonthlyPlanHistory extends StatelessWidget {
  const AMonthlyPlanHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              CustomHeader(text: "Monthly Plan History"),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8.w,
                  ),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/teacher-mon-img.png"),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Eleanor Pena",
                    style: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: lightBlackColor),
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 44.h,
                decoration: BoxDecoration(
                    color: yellowlightColor,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      "Month",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: whiteColor),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      "Status",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: whiteColor),
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    Text(
                      "Form",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: whiteColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 54.h,
                decoration: BoxDecoration(
                    color: bWhiteColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: cWhiteColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Jul",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: lightblackColor),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Pending",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: redAccentColor),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => AMonthlyPlanSettings());
                      },
                      child: Container(
                        width: 117.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                          color: yellowlightColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Text(
                            "Send Reminder",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: whiteColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 321.h,
                width: 335.w,
                child: ListView.separated(
                  itemCount: listOfmonth.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 335.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                          color: bWhiteColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: cWhiteColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            listOfmonth[index],
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: lightblackColor),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            "Submitted",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: darkGreenColor),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          SvgPicture.asset("assets/icons/pdf-icon.svg"),
                          Text(
                            "My Monthly...",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: lightblackColor),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 12.h,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
