import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/navigation/views/A_navbar_screen.dart';
import 'package:hla_app/Screens/Parents/navigation/views/p_navbar.dart';
import 'package:hla_app/Screens/Students/navigation/views/navbar_screen.dart';
import 'package:hla_app/Screens/Teachers/navigation/views/t_navbar_screen.dart';
import 'package:hla_app/Screens/authentication/controllers/login_controllers.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_textformfield.dart';

class LoginScreen extends GetView<LoginControllers> {
  final int categoryIndex;

  const LoginScreen({required this.categoryIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              primaryColor,
              primaryColor,
              yellowlightColor,
              yellowlightColor
            ])),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Center(
            child: Container(
              width: 375.w,
              height: 383.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.inter(
                          color: blackAccentColor,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: greyColor),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    // Customte(
                    //   text: "example@rosewood.com",
                    //   inputType: TextInputType.text,
                    //   isPassword: false,
                    //   obscureText: false,
                    // ),

                    CustomTextFormField(
                        hintText: "example@rosewood.com",
                        inputType: TextInputType.text),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: greyColor),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      width: 295.w,
                      height: 46.h,
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
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: blackAccentColor),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: controller.secureText.value,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 12.h),
                              hintText: "*******",
                              hintStyle: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: blackAccentColor),
                              suffixIconColor: aGreyColor,
                              suffixIcon: GestureDetector(
                                onTap: controller.toggleSecureText,
                                child: controller.secureText.value
                                    ? const Icon(
                                        Icons.visibility_off_outlined,
                                        size: 18,
                                      )
                                    : const Icon(
                                        Icons.visibility_outlined,
                                        size: 18,
                                      ),
                              ),
                              border: InputBorder.none,
                            ),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() => Checkbox(
                              value: controller.isChecked.value,
                              activeColor: primaryColor,
                              onChanged: (newBool) {
                                controller.isChecked.value = newBool!;
                              },
                            )),
                        Text(
                          "Remember me",
                          style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: greyColor),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Text(
                          "Forgot Password?",
                          style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: yellowlightColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        switch (categoryIndex) {
                          case 0: // Student
                            Get.off(() => NavbarScreen());
                            break;
                          case 1: // Teacher
                            Get.off(() => TNavbarScreen());
                            break;
                          case 2: // Parents
                            Get.off(() => const PNavbar());
                            break;
                          case 3: // Admin

                            Get.off(() => const ANavbarScreen());
                            break;
                          default:
                            Get.off(() => NavbarScreen());
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          fixedSize: Size(295.w, 56.h)),
                      child: Text(
                        "Login",
                        style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
