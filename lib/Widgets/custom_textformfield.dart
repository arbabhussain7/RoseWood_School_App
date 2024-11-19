import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final Function(String)? onChanged;

  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.inputType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 335.w,
      // height: 54.h,
      padding: EdgeInsets.only(left: 12.w),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: lightwhiteColor),
        boxShadow: [
          BoxShadow(
            color: eWhiteColor.withOpacity(0.24),
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: TextFormField(
        keyboardType: inputType,
        onChanged: onChanged, // Pass the onChanged function here
        style: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: darkBlackColor.withOpacity(0.8),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: darkBlackColor.withOpacity(0.5),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
