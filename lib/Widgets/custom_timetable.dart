import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

// ignore: must_be_immutable
class CustomTimeTable extends StatelessWidget {
  CustomTimeTable({super.key, required this.borderColor, required this.color});
  Color borderColor;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 113.h,
      decoration: BoxDecoration(
          color: borderColor.withOpacity(0.5),
          border: Border.all(
            color: color.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: color,
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
                    SizedBox(
                      width: 22.w,
                      height: 22.h,
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/teacher-img.png"),
                      ),
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
                    "Mon - Thu",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: lightblackColor),
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
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: lightblackColor),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
