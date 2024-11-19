import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/task/components/custom_confirm_button.dart';
import 'package:hla_app/Screens/Teachers/task/controller/mytask_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class AssignTask extends GetView<MytaskController> {
  const AssignTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHeader(text: "Assign Task"),
                SizedBox(
                  height: 22.h,
                ),
                Text(
                  "Title",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 54.h,
                  padding: EdgeInsets.only(left: 16.w),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(
                        color: lightwhiteColor,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ]),
                  child: TextFormField(
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: darkBlackColor.withOpacity(0.8)),
                      decoration: InputDecoration(
                          hintText: "Give a Lecture on Javascript",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: darkBlackColor.withOpacity(0.8)),
                          border: InputBorder.none)),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Task Details",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 93.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: lightwhiteColor),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ]),
                  child: TextFormField(
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: darkBlackColor.withOpacity(0.8)),
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText:
                              "You have to take an extra class and give \nlecture on the basics of javascript.",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: darkBlackColor.withOpacity(0.8)),
                          border: InputBorder.none)),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Deadline",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 335.w,
                  height: 54.h,
                  padding: EdgeInsets.only(left: 16.w),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(
                        color: lightwhiteColor,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: eWhiteColor.withOpacity(0.24),
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 1))
                      ]),
                  child: TextFormField(
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: darkBlackColor.withOpacity(0.8)),
                      decoration: InputDecoration(
                          hintText: "21 Jan, 2024",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: darkBlackColor.withOpacity(0.8)),
                          border: InputBorder.none)),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Assign to",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GestureDetector(
                    onTap: () {
                      Get.bottomSheet(Container(
                        width: 375.w,
                        height: 500,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(24.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 12.h,
                              ),
                              Center(
                                child: Text(
                                  "Select Teacher",
                                  style: GoogleFonts.inter(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.r),
                                    border: Border.all(
                                        color: blackColor.withOpacity(0.1))),
                                child: TextFormField(
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: darkBlackColor.withOpacity(0.8)),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 14.h),
                                      filled: true,
                                      fillColor: aWhiteColor,
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: SvgPicture.asset(
                                            "assets/icons/search-icon.svg"),
                                      ),
                                      hintText: "Alex",
                                      hintStyle: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              darkBlackColor.withOpacity(0.8)),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              SizedBox(
                                height: 321.h,
                                width: 354.w,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Scrollbar(
                                        thumbVisibility: true,
                                        trackVisibility: true,
                                        thickness: 6,
                                        radius: Radius.circular(12.r),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: ListView.separated(
                                                itemCount:
                                                    listOfButtombarSheet.length,
                                                itemBuilder: (context, index) {
                                                  return Obx(
                                                    () => GestureDetector(
                                                      onTap: () {
                                                        controller.selectedIndex
                                                            .value = index;
                                                      },
                                                      child: Container(
                                                        width: 314.w,
                                                        height: 67.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              listOfButtombarSheetColor[
                                                                  index],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.r),
                                                          border: Border.all(
                                                            color: controller
                                                                        .selectedIndex
                                                                        .value ==
                                                                    index
                                                                ? primaryColor
                                                                : Colors
                                                                    .transparent,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            SizedBox(
                                                                width: 8.w),
                                                            CircleAvatar(
                                                              backgroundImage:
                                                                  AssetImage(
                                                                      listOfButtombarSheetimg[
                                                                          index]),
                                                            ),
                                                            SizedBox(
                                                                width: 8.w),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  listOfButtombarSheet[
                                                                      index],
                                                                  style:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color:
                                                                        darkBlackColor,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "alex@gmail.com",
                                                                  style: GoogleFonts
                                                                      .manrope(
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color:
                                                                        darkBlackColor,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Spacer(),
                                                            if (controller
                                                                    .selectedIndex
                                                                    .value ==
                                                                index)
                                                              SvgPicture.asset(
                                                                  "assets/icons/check-icons.svg"),
                                                            SizedBox(
                                                              width: 18.w,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                    height: 12.h,
                                                  );
                                                },
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
                    },
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/chat-img.png"),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          "Alexa Jhons",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: lightBlackColor),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 222.h,
                ),
                Center(
                  child: ConfirmButton(
                    text: "Confirm",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
