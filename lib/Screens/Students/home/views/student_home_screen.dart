import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Students/classDetail/views/class_detail.dart';
import 'package:hla_app/Screens/Students/home/views/view_classes.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_timetable.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Hi👋 Alex Costa",
                      style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: blackAccentColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: "\nWelcome back",
                            style: GoogleFonts.inter(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: greyColor))
                      ]),
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/profile-img.png"),
                )
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              "Ready to Take",
              style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: lightBlackColor),
            ),
            SizedBox(
              height: 22.h,
            ),
            Container(
              width: 350.w,
              height: 100.h,
              decoration: BoxDecoration(
                  color: greenAccentColor,
                  border: Border.all(
                    color: greenColor.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: greenColor),
                      padding: const EdgeInsets.all(12),
                      child: const CircleAvatar(
                        backgroundColor: greenColor,
                        backgroundImage:
                            AssetImage("assets/images/user-img.png"),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "English Class",
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: lightblackColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Online",
                          style: GoogleFonts.inter(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: greyColor),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 42.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage("assets/images/teacher-img.png"),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                "Sir Adnan",
                                style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Join Class",
                                style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: lightblackColor),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              SvgPicture.asset(
                                  "assets/icons/forward-arrow-icon.svg")
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today’s Classes",
                  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: lightBlackColor),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ViewClassesScreen());
                  },
                  child: Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: yellowlightColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => const ClassDetail());
                    },
                    child: CustomTimeTable(
                      color: listOfColors[index],
                      borderColor: listOfBorderColors[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 16.h,
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
