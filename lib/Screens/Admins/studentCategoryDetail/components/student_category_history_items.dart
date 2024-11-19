import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

class StudentCategoryHistoryItems extends StatelessWidget {
  const StudentCategoryHistoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 431.h,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: 335.w,
                height: 113.h,
                decoration: BoxDecoration(
                    color: borderPinkColor.withOpacity(0.5),
                    border: Border.all(
                      color: pinkColor.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: pinkColor,
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
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 11,
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
                          )
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
                              "Mon, 10:00 am - 11:00 am",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: lightblackColor),
                            ),
                            Text(
                              "Reviewed",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: darkGreenColor),
                            ),
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
              height: 14.h,
            );
          },
          itemCount: 2),
    );
  }
}
