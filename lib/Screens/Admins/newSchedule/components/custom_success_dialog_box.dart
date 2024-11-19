import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/newSchedule/controllers/new_Schedule_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';

class CustomSuccessDialogBox extends GetView<NewScheduleController> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationDuration: Duration(milliseconds: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 334.w,
        height: 348.h,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/success-icon.svg"),
                Text(
                  "Class Scheduled Successfully",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              "The class has been scheduled successfully.",
              style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: bGreyColor),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              child: Container(
                width: 304.w,
                height: 192.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: cGreyColor),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "App Development",
                            style: GoogleFonts.inter(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: blackColor),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Online",
                                style: GoogleFonts.inter(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    color: darkBlackColor.withOpacity(0.8)),
                              ),
                              SvgPicture.asset(
                                "assets/icons/menus-icons.svg",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 135.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                      color: whiteColor.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(color: whiteColor)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6.w, vertical: 6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Student",
                                          style: GoogleFonts.inter(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              color: blackColor),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 26.w,
                                              height: 26.h,
                                              child: const CircleAvatar(
                                                backgroundImage: AssetImage(
                                                  "assets/images/chat-img.png",
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Text(
                                              "Alexa Jhons",
                                              style: GoogleFonts.inter(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: blackColor),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Expanded(
                                child: Container(
                                  width: 135.w,
                                  height: 61.h,
                                  decoration: BoxDecoration(
                                      color: whiteColor.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(color: whiteColor)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6.w, vertical: 6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Teacher",
                                          style: GoogleFonts.inter(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              color: blackColor),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 26.w,
                                              height: 26.h,
                                              child: const CircleAvatar(
                                                backgroundImage: AssetImage(
                                                  "assets/images/Ava-Calvar.png",
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Text(
                                              "Ava Calvar",
                                              style: GoogleFonts.inter(
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: blackColor),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mon - Thu",
                              style: GoogleFonts.inter(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: darkBlackColor.withOpacity(0.8)),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/icons/clock-icon.svg"),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "10:00 am - 11:00 am",
                                  style: GoogleFonts.inter(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      color: darkBlackColor.withOpacity(0.8)),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 146.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(87),
                            color: cGreyColor),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: lightblackColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 146.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(87),
                            color: darkGreenColor),
                        child: Center(
                          child: Text(
                            "Continue",
                            style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }
}
