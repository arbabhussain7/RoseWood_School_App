import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneNumberTextField extends StatelessWidget {
  const CustomPhoneNumberTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 54.h,
      padding: EdgeInsets.only(top: 13.h, left: 6.w),
      decoration: BoxDecoration(
          border: Border.all(color: lightwhiteColor),
          borderRadius: BorderRadius.circular(10.r),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
                color: eWhiteColor.withOpacity(0.24),
                blurRadius: 2,
                spreadRadius: 0,
                offset: Offset(0, 1))
          ]),
      child: IntlPhoneField(
        style: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: darkBlackColor.withOpacity(0.8),
        ),
        dropdownIcon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: ablackColor,
        ),
        // controller: controller.phoneController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 14.h),
            border: InputBorder.none,
            hintText: "  Enter Phone No ",
            hintStyle: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: darkBlackColor.withOpacity(0.5),
            ),
            counterText: "\n"),

        showCountryFlag: false,
        initialCountryCode: 'PAK',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        dropdownIconPosition: IconPosition.trailing,
        dropdownTextStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: darkBlackColor.withOpacity(0.8),
        ),
        // textAlignVertical: TextAlignVertical.top,
        // flagsButtonPadding: const EdgeInsets.only(left: 10),
        // style: GoogleFonts.poppins(
        //   fontSize: 10.sp,
        //   color: blackColor,
        // ),
      ),
    );
  }
}
