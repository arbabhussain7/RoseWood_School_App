import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/controllers/user_detail_profile_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:pie_chart/pie_chart.dart';

class StudentCategoryReportItems extends GetView<StudentCategoryController> {
  const StudentCategoryReportItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reports",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBlackColor),
              ),
              Row(
                children: [
                  Text(
                    "This Week",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  SvgPicture.asset(
                    "assets/icons/dropdown-icon.svg",
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            width: 335.w,
            height: 250.h,
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                      color: blackColor.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 0))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Class Attendance',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: darkBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(() => RichText(
                              text: TextSpan(
                                  text: "${controller.presents.value} ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ablueColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Presents",
                                        style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: lightblackColor))
                                  ]),
                            )

                        ////
                        ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Obx(() => RichText(
                              text: TextSpan(
                                  text: "${controller.absents.value} ",
                                  style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: aPinkColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Absents",
                                        style: GoogleFonts.inter(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: lightblackColor))
                                  ]),
                            )

                        ////
                        ),
                  ],
                ),
                SizedBox(height: 2),
                Obx(
                  () => PieChart(
                    chartRadius: 150,
                    dataMap: controller.listOfStudentReport,
                    animationDuration: Duration(milliseconds: 800),
                    // chartLegendSpacing: 32,
                    colorList: listOfStudentReportColor,

                    legendLabels: {},
                    initialAngleInDegree: 12,

                    chartValuesOptions: const ChartValuesOptions(
                      showChartValueBackground: true,
                      showChartValues: true,

                      chartValueBackgroundColor: Colors.transparent,
                      chartValueStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                      showChartValuesInPercentage: true,
                      // showChartValuesOutside: true,
                      decimalPlaces: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            width: 335.w,
            height: 250.h,
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                      color: blackColor.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 0))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Class Engagement',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: darkBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 18.h),
                Obx(
                  () => PieChart(
                    dataMap: controller.listOfStudentReports,
                    animationDuration: Duration(milliseconds: 800),
                    // chartLegendSpacing: 32,
                    colorList: listOfStudentReportColors,
                    chartRadius: 170,

                    legendLabels: {},
                    initialAngleInDegree: -50,

                    chartValuesOptions: const ChartValuesOptions(
                      showChartValueBackground: true,
                      showChartValues: true,
                      chartValueBackgroundColor: Colors.transparent,
                      chartValueStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                      showChartValuesInPercentage: true,
                      // showChartValuesOutside: true,
                      decimalPlaces: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            width: 335.w,
            height: 250.h,
            padding: EdgeInsets.only(top: 20, left: 12.w),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                      color: blackColor.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 0))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hitting Objectives',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: darkBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Obx(
                  () => PieChart(
                    dataMap: controller.listOfStudentReporter,
                    chartRadius: 190,

                    animationDuration: Duration(milliseconds: 800),
                    // chartLegendSpacing: 32,
                    colorList: listOfStudentReportColorer,

                    legendLabels: {},
                    initialAngleInDegree: 12,

                    chartValuesOptions: const ChartValuesOptions(
                      showChartValueBackground: true,
                      showChartValues: true,
                      chartValueBackgroundColor: Colors.transparent,
                      chartValueStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                      showChartValuesInPercentage: true,
                      // showChartValuesOutside: true,
                      decimalPlaces: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
