import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hla_app/Screens/Admins/teacherCategoryDetail/views/teacher_category_detail.dart';
import 'package:hla_app/Screens/constant/const.dart';

// ignore: must_be_immutable
class TeacherUserDetail extends StatelessWidget {
  TeacherUserDetail({
    super.key,
    required this.itemcount,
  });
  int itemcount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 511.h,
      child: ListView.separated(
        itemCount: itemcount,
        itemBuilder: (context, index) {
          return Slidable(
            endActionPane: ActionPane(motion: ScrollMotion(), children: [
              Container(
                width: 52.w,
                height: 50.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: redAccentColor.withOpacity(0.1)),
                child: Center(
                    child: SvgPicture.asset("assets/icons/delete-icon.svg")),
              ),
              SizedBox(
                width: 8.w,
              ),
              Container(
                width: 52.w,
                height: 50.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: lightwhiteColor),
                child: Center(
                    child: SvgPicture.asset("assets/icons/edit-icon.svg")),
              )
            ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => TeacherCategoryDetail());
                },
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
                            AssetImage("assets/images/chat-img...png"),
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
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 8.h,
          );
        },
      ),
    );
  }
}
