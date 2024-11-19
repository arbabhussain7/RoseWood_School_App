import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/completeClass/views/t_complete_class.dart';
import 'package:hla_app/Screens/Teachers/home/controllers/teacher_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_timetable.dart';

class TeacherHomeScreen extends GetView<TeacherController> {
  const TeacherHomeScreen({super.key});

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
                height: 22.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("*********");
                      controller.tNavgationController.openDrawer();
                    },
                    child: const CircleAvatar(
                      radius: 31,
                      backgroundImage:
                          AssetImage("assets/images/t-profile-img.png"),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Hello!",
                        style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: greyColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: "\nAlexa Jhons",
                              style: GoogleFonts.inter(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: blackAccentColor))
                        ]),
                  ),
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
                height: 9.h,
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
                      CircleAvatar(
                        backgroundColor: greenColor,
                        radius: 25.0,
                        child: Image.asset(
                          "assets/images/user-img.png",
                          width: 24.w,
                          height: 24.h,
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
                                SizedBox(
                                  width: 22.w,
                                  height: 22.h,
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/student-imgs.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text(
                                  "Mr Ateeq",
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
                                  "Start Class",
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 4.h),
                child: Divider(
                  color: blackColor.withOpacity(0.04),
                ),
              ),
              SizedBox(
                height: 36.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfTitems.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.selectedTab(index);
                        },
                        child: Container(
                          width: 133.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: controller.selectedTab == index
                                  ? primaryColor
                                  : ligherGreyColor,
                              borderRadius: BorderRadius.circular(100.r)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              listOfTitems[index],
                              style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  color: controller.selectedTab == index
                                      ? ligherGreyColor
                                      : lightBlackColor,
                                  fontWeight: FontWeight.w500),
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
              SizedBox(
                height: 12.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: yellowlightColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(
                () {
                  if (controller.selectedTab.value == 0) {
                    // Today's Classes Content
                    return Expanded(
                      child: ListView.separated(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return CustomTimeTable(
                              borderColor: listOfBorderColors[index],
                              color: listOfColors[index]);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 12.h,
                          );
                        },
                      ),
                    );
                  } else {
                    // Completed Classes Content
                    return Expanded(
                      child: ListView.separated(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 335.w,
                            height: 113.h,
                            decoration: BoxDecoration(
                                color:
                                    listOfBorderColors[index].withOpacity(0.5),
                                border: Border.all(
                                  color: listOfColors[index].withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 12.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            color: listOfColors[index]),
                                        padding: const EdgeInsets.all(12),
                                        child: CircleAvatar(
                                          backgroundColor: listOfColors[index],
                                          backgroundImage: const AssetImage(
                                              "assets/images/user-img.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 22.w,
                                            height: 22.h,
                                            child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/images/student-imgs.png"),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          Text(
                                            "Mr Ateeq",
                                            style: GoogleFonts.inter(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: greyColor),
                                          )
                                        ],
                                      )
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
                                          "Mon,10:00 am - 11:00 am",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: lightblackColor),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(
                                                () => const TCompleteClass());
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                "Give Review",
                                                style: GoogleFonts.inter(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: lightblackColor),
                                              ),
                                              SizedBox(
                                                width: 6.w,
                                              ),
                                              SvgPicture.asset(
                                                  "assets/icons/forward-arrow-icon.svg"),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 12.h,
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
