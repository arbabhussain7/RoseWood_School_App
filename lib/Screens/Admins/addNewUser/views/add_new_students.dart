import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/addNewUser/controllers/addNewUser_controller.dart';
import 'package:hla_app/Screens/Teachers/task/components/custom_confirm_button.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_header.dart';
import 'package:hla_app/Widgets/custom_password.dart';
import 'package:hla_app/Widgets/custom_phoneNo_textField.dart';
import 'package:hla_app/Widgets/custom_textformfield.dart';

class AddNewStudents extends GetView<AddnewuserController> {
  const AddNewStudents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(text: "New Student"),
              SizedBox(
                height: 22.h,
              ),
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 53,
                      backgroundImage: AssetImage("assets/images/chat-img.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 75.h, left: 82.w),
                      child: Container(
                        width: 24.w,
                        height: 24.h,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(120.r),
                            color: primaryColor,
                            border: Border.all(color: fWhiteColor)),
                        child:
                            SvgPicture.asset("assets/icons/editable-icon.svg"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                " Name",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                inputType: TextInputType.text,
                hintText: "Enter Name",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                " Email",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                inputType: TextInputType.text,
                hintText: "Enter Email",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Phone No",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomPhoneNumberTextField(),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Password",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomPassword(
                controllers: controller.passwordController,
                hinttext: "Enter Password",
                isPassword: true,
              ),
              SizedBox(height: 15),
              Text(
                "Confirm Password",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomPassword(
                controllers: controller.confirmPasswordController,
                hinttext: "Enter Confirm Password",
                isPassword: true,
              ),
              SizedBox(height: 80),
              Center(
                child: ConfirmButton(text: "Register Account"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
