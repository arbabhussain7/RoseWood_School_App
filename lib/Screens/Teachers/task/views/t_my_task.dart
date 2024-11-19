import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/task/controller/mytask_controller.dart';
import 'package:hla_app/Screens/Teachers/task/views/assign_task.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';
import 'package:hla_app/Widgets/custom_teacher.dart';

class TMyTask extends GetView<MytaskController> {
  const TMyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                SizedBox(
                  height: 12.h,
                ),
                CustomHeader(text: "Task"),
                SizedBox(
                  height: 42.h,
                ),
                SizedBox(
                  height: 43.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOftask.length,
                    itemBuilder: (context, index) {
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            controller.isSelectedTab.value = index;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 44.w),
                            child: Column(
                              children: [
                                Text(
                                  listOftask[index],
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        controller.isSelectedTab.value == index
                                            ? primaryColor
                                            : greyColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Container(
                                  width: 60.w,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color:
                                        controller.isSelectedTab.value == index
                                            ? primaryColor
                                            : Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 6.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "All",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: lightblackColor),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    SvgPicture.asset("assets/icons/dropdown-icon.svg"),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Obx(
                  () {
                    if (controller.isSelectedTab.value == 0) {
                      // Today's Classes Content
                      return SizedBox(
                        height: 712.h,
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 335.w,
                              height: 156.h,
                              decoration: BoxDecoration(
                                  color: lightwhiteColor,
                                  border: Border.all(
                                      color: blackColor.withOpacity(0.1)),
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18.w, vertical: 12.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Give Lecture on Javascript",
                                      style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: lightblackColor),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      "You have to take an extra class and give a lecture on the basics of javascript",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color:
                                              darkBlackColor.withOpacity(0.8)),
                                    ),
                                    SizedBox(height: 52.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "21 Jan, 2024 ",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: darkBlackColor
                                                  .withOpacity(0.8)),
                                        ),
                                        Text(
                                          "Mark Completed",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: greyColor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 22.h,
                            );
                          },
                        ),
                      );
                    } else {
                      // Completed Classes Content
                      return SizedBox(
                        height: 542.h,
                        child: ListView.separated(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 335.w,
                              height: 228.h,
                              decoration: BoxDecoration(
                                  color: lightwhiteColor,
                                  border: Border.all(
                                      color: blackColor.withOpacity(0.1)),
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18.w, vertical: 15.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Give Lecture on Javascript",
                                      style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: lightblackColor),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      "You have to take an extra class and give a lecture on the basics of javascript",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color:
                                              darkBlackColor.withOpacity(0.8)),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Text(
                                      "Assigned to",
                                      style: GoogleFonts.inter(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    CustomTeacher(),
                                    SizedBox(height: 35.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "21 Jan, 2024 ",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: darkBlackColor
                                                  .withOpacity(0.8)),
                                        ),
                                        Text(
                                          "Completed",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: darkGreenColor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 22.h,
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
                Obx(() {
                  if (controller.isSelectedTab.value == 0) {
                    return SizedBox();
                  } else {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => AssignTask());
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 171.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/add-icon.svg"),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "Assign new Task",
                                style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: whiteColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                }),
                SizedBox(
                  height: 12.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
