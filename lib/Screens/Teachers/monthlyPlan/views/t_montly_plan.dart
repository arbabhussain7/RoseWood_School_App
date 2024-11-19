import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/monthlyPlan/views/t_submit_monthly_plan.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class TMontlyPlan extends StatelessWidget {
  const TMontlyPlan({super.key});

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
              CustomHeader(text: "Monthly Plan"),
              SizedBox(
                height: 22.h,
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
                      "Plan File",
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
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => TSubmitMonthlyPlan());
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: whiteColor),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r)),
                          backgroundColor: yellowlightColor),
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
