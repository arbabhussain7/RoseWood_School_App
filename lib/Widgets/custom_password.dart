import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/addNewUser/controllers/addNewUser_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:get/get.dart';

class CustomPassword extends GetView<AddnewuserController> {
  final IconData? suffixIcons;
  final String hinttext;
  final bool isPassword;
  final TextInputType inputType;
  final TextEditingController controllers;

  CustomPassword({
    Key? key,
    this.suffixIcons,
    required this.hinttext,
    required this.controllers,
    this.isPassword = false,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 54.h,
      padding: EdgeInsets.only(top: 8.h, left: 22.w),
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
      child: Obx(() => TextFormField(
            style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: darkBlackColor.withOpacity(0.8)),
            keyboardType: inputType,
            obscureText: controller.secureText.value,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: darkBlackColor.withOpacity(0.5)),
              suffixIconColor: aGreyColor,
              suffixIcon: isPassword
                  ? GestureDetector(
                      onTap: controller.toggleSecureText,
                      child: controller.secureText.value
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility_outlined),
                    )
                  : null,
              border: InputBorder.none,
            ),
          )),
    );
  }
}
