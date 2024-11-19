import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/navigation/controllers/A_navigation_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class AdminHomeScreen extends GetView<ANavigationController> {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 219.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            primaryColor,
                            yellowlightColor,
                          ]),
                      color: pinkColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(28.r),
                          topLeft: Radius.circular(28.r),
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.w, vertical: 58.h),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.openDrawer();
                            },
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/teacher-img.png"),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          RichText(
                            text: TextSpan(
                              text: "Hello!",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: whiteColor.withOpacity(0.5),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "\nAlexa Jhons",
                                  style: GoogleFonts.inter(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 143.h, left: 23.w),
                  child: SizedBox(
                    width: 521.w,
                    height: 159.h,
                    child: ListView.separated(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 27.1, sigmaY: 27.1),
                            child: Container(
                              width: 159.w,
                              height: 159.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: whiteColor.withOpacity(0.55),
                                border: Border.all(
                                    color: aBlackColor.withOpacity(0.2)),
                                boxShadow: [
                                  BoxShadow(
                                    color: bBlackColor.withOpacity(0.04),
                                    blurRadius: 16,
                                    spreadRadius: -4,
                                    offset: Offset(0, 12),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.w, vertical: 14.h),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 48.w,
                                      height: 48.h,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(17.r)),
                                      child: SvgPicture.asset(
                                          listOfAdminImg[index]),
                                    ),
                                    Text(
                                      listOfAdminText[index],
                                      style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              lightblackColor.withOpacity(0.8)),
                                    ),
                                    Text(
                                      listOfAdminNumber[index],
                                      style: GoogleFonts.inter(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              lightblackColor.withOpacity(0.8)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 12.w,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently Scheduled Classes",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: yellowlightColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              height: 472.h,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Container(
                      width: 335.w,
                      height: 212.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: listOfBorderColors[index]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 12.h),
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
                                          color:
                                              darkBlackColor.withOpacity(0.8)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            backgroundImage: AssetImage(
                                                "assets/images/chat-img.png"),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            backgroundImage: AssetImage(
                                                "assets/images/Ava-Calvar.png"),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      SvgPicture.asset(
                                          "assets/icons/clock-icon.svg"),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        "10:00 am - 11:00 am",
                                        style: GoogleFonts.inter(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: darkBlackColor
                                                .withOpacity(0.8)),
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
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15.h,
                  );
                },
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Users",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: yellowlightColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 231.h,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Container(
                      width: 334.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: aGreenColor.withOpacity(0.12),
                                blurRadius: 20,
                                spreadRadius: 0,
                                offset: Offset(0, 2)),
                          ],
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/new-user-img.png"),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Adela Parkson",
                                style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: lightblackColor),
                              ),
                              Text(
                                "adela@rosewood.com",
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 42.w,
                          ),
                          Text(
                            "Timetable",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: yellowlightColor),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          SvgPicture.asset(
                            "assets/icons/forward-arrow-icon.svg",
                            width: 4.w,
                            height: 8.h,
                            color: yellowlightColor,
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 4.h,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
