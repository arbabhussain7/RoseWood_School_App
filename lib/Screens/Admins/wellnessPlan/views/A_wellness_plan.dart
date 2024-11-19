import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/wellnessPlan/controllers/a_wellness_plan_controllers.dart';
import 'package:hla_app/Screens/constant/const.dart';

class AWellnessPlan extends GetView<AWellnessPlanControllers> {
  const AWellnessPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child:
                          SvgPicture.asset("assets/icons/back-arrow-com.svg")),
                  Text(
                    "Wellness Forms",
                    style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                  SvgPicture.asset("assets/icons/settings-icons.svg")
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 275.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        border: Border.all(color: lightwhiteColor)),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: greyColor),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14.h),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                                "assets/icons/search-icons.svg"),
                          ),
                          hintText: " Search Teacher ",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: darkBlackColor.withOpacity(0.8)),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Container(
                    width: 52.w,
                    height: 52.h,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: SvgPicture.asset("assets/icons/filter-icon.svg"),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Container(
                  width: 335.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                      color: yellowlightColor,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        "Teacher",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                      SizedBox(
                        width: 112.w,
                      ),
                      Text(
                        "Status",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ],
                  ),
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
                    Container(
                      width: 40.w,
                      height: 40.h,
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/teacher-mon-img.png"),
                      ),
                    ),
                    Text(
                      "Eleanor Pena",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: lightBlackColor),
                    ),
                    SizedBox(
                      width: 55.w,
                    ),
                    Text(
                      "Pending",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: redAccentColor),
                    ),
                    PopupMenuButton<String>(
                      color: whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.r),
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r))),

                      icon: SvgPicture.asset(
                          "assets/icons/menus-icons.svg"), // Menu icon
                      onSelected: (String choice) {
                        controller.selectMenuOption(choice);
                      },
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem<String>(
                            value: 'View History',
                            child: Text(
                              'View History',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: lightblackColor),
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Send Reminder',
                            child: Text(
                              'Send Reminder',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: lightblackColor),
                            ),
                          ),
                        ];
                      },
                    ),
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
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 335.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                          color: bWhiteColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: cWhiteColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/teacher-mon-img.png"),
                            ),
                          ),
                          Text(
                            "Eleanor Pena",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: lightBlackColor),
                          ),
                          SizedBox(
                            width: 45.w,
                          ),
                          Text(
                            "Submitted",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: darkGreenColor),
                          ),
                          PopupMenuButton<String>(
                            color: whiteColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.r),
                                    bottomLeft: Radius.circular(16.r),
                                    bottomRight: Radius.circular(16.r))),

                            icon: SvgPicture.asset(
                                "assets/icons/menus-icons.svg"), // Menu icon
                            onSelected: (String choice) {
                              controller.selectMenuOption(choice);
                            },
                            itemBuilder: (BuildContext context) {
                              return [
                                const PopupMenuItem<String>(
                                  value: 'View History',
                                  child: Text(
                                    'View History',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: lightblackColor),
                                  ),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Send Reminder',
                                  child: Text(
                                    'Send Reminder',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: lightblackColor),
                                  ),
                                ),
                              ];
                            },
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
