import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

// ignore: must_be_immutable
class CustomScheduleTeacherStudents extends StatelessWidget {
  CustomScheduleTeacherStudents({super.key, required this.bordercolors});
  Color bordercolors;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 340.w,
        height: 212.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r), color: bordercolors),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "App Development",
                        style: GoogleFonts.inter(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                            color: blackColor),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Online",
                        style: GoogleFonts.inter(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: darkBlackColor.withOpacity(0.8)),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/Menu-icon.svg",
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 149.w,
                    height: 67.h,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        border: Border.all(color: whiteColor),
                        borderRadius: BorderRadius.circular(7.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Student",
                          style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 14,
                              backgroundImage:
                                  AssetImage("assets/images/chat-img.png"),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Alexa Jhons",
                              style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 149.w,
                    height: 67.h,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        border: Border.all(color: whiteColor),
                        borderRadius: BorderRadius.circular(7.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Teacher",
                          style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 14,
                              backgroundImage:
                                  AssetImage("assets/images/Ava-Calvar.png"),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Ava Calvar",
                              style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mon - Thu",
                      style: GoogleFonts.inter(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: darkBlackColor.withOpacity(0.8)),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/clock-icon.svg"),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "10:00 am - 11:00 am",
                          style: GoogleFonts.inter(
                              fontSize: 13.sp,
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
    );
  }
}
