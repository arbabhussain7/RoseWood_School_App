import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Splash/views/splash_screen.dart';
import 'package:hla_app/Screens/constant/const.dart';

class TProfileScreen extends StatelessWidget {
  const TProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Text(
              "My Profile",
              style: GoogleFonts.inter(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  color: darkBlackColor),
            ),
            SizedBox(
              height: 43.h,
            ),
            const CircleAvatar(
              radius: 46,
              backgroundImage: AssetImage("assets/images/t-profile-img.png"),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Alexa Jhons",
              style: GoogleFonts.inter(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  color: darkBlackColor),
            ),
            Text(
              "alexjhons@rosewood.com",
              style: GoogleFonts.inter(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: darkBlackColor),
            ),
            SizedBox(
              height: 63.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Account",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: blackAccentColor),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.h,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: greyLightColor,
                            borderRadius: BorderRadius.circular(6.r)),
                        child:
                            SvgPicture.asset("assets/icons/setting-icon.svg"),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        "Settings",
                        style: GoogleFonts.inter(
                            fontSize: 14.03.sp,
                            fontWeight: FontWeight.w500,
                            color: lightBlackColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.h,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: blueLightColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: SvgPicture.asset("assets/icons/lock-icon.svg"),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        "Privacy & Policy",
                        style: GoogleFonts.inter(
                            fontSize: 14.03.sp,
                            fontWeight: FontWeight.w500,
                            color: lightBlackColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 36.w,
                        height: 36.h,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: orangeLightColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: SvgPicture.asset(
                            "assets/icons/term-condition-icon.svg"),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        "Terms & Conditions",
                        style: GoogleFonts.inter(
                            fontSize: 14.03.sp,
                            fontWeight: FontWeight.w500,
                            color: lightBlackColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(() => SplashScreen());
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 36.w,
                          height: 36.h,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: redColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6.r)),
                          child:
                              SvgPicture.asset("assets/icons/Logout-icon.svg"),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          "Log Out",
                          style: GoogleFonts.inter(
                              fontSize: 14.03.sp,
                              fontWeight: FontWeight.w500,
                              color: lightBlackColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
