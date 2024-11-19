import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

class StudentCategoryProfileItems extends StatelessWidget {
  const StudentCategoryProfileItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                width: 16.w,
                height: 16.h,
                "assets/icons/editable-icon.svg",
                color: lightblackColor,
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Edit",
                style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: lightblackColor),
              ),
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          Center(
            child: CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage("assets/images/chat-img.png"),
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          Text(
            "Name",
            style: GoogleFonts.inter(
                fontSize: 14.sp, fontWeight: FontWeight.w400, color: greyColor),
          ),
          TextFormField(
            style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: lightblackColor),
            decoration: InputDecoration(
                hintText: "Adela Parkson",
                hintStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
                border: InputBorder.none),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Email",
            style: GoogleFonts.inter(
                fontSize: 14.sp, fontWeight: FontWeight.w400, color: greyColor),
          ),
          TextFormField(
            style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: lightblackColor),
            decoration: InputDecoration(
                hintText: "alexa@student.rosewood.com",
                hintStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
                border: InputBorder.none),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Phone No.",
            style: GoogleFonts.inter(
                fontSize: 14.sp, fontWeight: FontWeight.w400, color: greyColor),
          ),
          TextFormField(
            style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: lightblackColor),
            decoration: InputDecoration(
                hintText: "+1 234 56789",
                hintStyle: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
                border: InputBorder.none),
          )
        ],
      ),
    );
  }
}
