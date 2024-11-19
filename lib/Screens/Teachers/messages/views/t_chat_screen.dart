import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart'
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

class TChatScreen extends StatelessWidget {
  const TChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height: 14.h),
          Container(
            width: double.infinity,
            height: 121.h,
            padding: EdgeInsets.only(top: 30.h),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 20,
                  spreadRadius: 0,
                  offset: const Offset(0, 4),
                )
              ],
              color: whiteColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset("assets/icons/back-arrow-com.svg")),
                SizedBox(
                  width: 12.w,
                ),
                const CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      AssetImage("assets/images/t-chat-profile-img.png"),
                ),
                SizedBox(width: 12.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mr. Vicky Hladynetz",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: lightBlackColor),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/active-icon.svg"),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "Online",
                          style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: darkGreyColor),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 74.w,
                ),
                SvgPicture.asset("assets/icons/phone-icon.svg"),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(child: SvgPicture.asset("assets/icons/Menu-icon.svg"))
              ],
            ),
          ),

          //................text messages
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                width: 286.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.r),
                        topRight: Radius.circular(24.r),
                        bottomLeft: Radius.circular(24.r))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Hi Vicky, are you available for a quick online class? ",
                          style: GoogleFonts.inter(
                              color: whiteColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 42.h,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "18:19",
                              style: GoogleFonts.inter(
                                  color: whiteColor.withOpacity(0.7),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            SvgPicture.asset(
                              "assets/icons/tick-icon.svg",
                              color: whiteColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/t-chat-profile-img.png"),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Container(
                  width: 287.w,
                  height: 66.h,
                  decoration: BoxDecoration(
                      color: yellowlightColor.withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24.r),
                          bottomLeft: Radius.circular(24.r),
                          bottomRight: Radius.circular(24.r))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Yes, Maam I am available.",
                          style: GoogleFonts.inter(
                              color: lightBlackColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              children: [
                                Text(
                                  "18:19",
                                  style: GoogleFonts.inter(
                                      color: lightBlackColor.withOpacity(0.7),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                SvgPicture.asset("assets/icons/tick-icon.svg")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          //................Input data

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 274.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border:
                          Border.all(color: darkGreysColor.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12.w,
                      ),
                      SizedBox(
                        width: 152.w,
                        child: TextFormField(
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: darkGreysColor),
                          decoration: InputDecoration(
                              hintText: "Type your message...",
                              hintStyle: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: darkGreysColor),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 51.w,
                      ),
                      SvgPicture.asset("assets/icons/mic-icon.svg"),
                      SizedBox(
                        width: 9.w,
                      ),
                      Expanded(
                          child: SvgPicture.asset("assets/icons/pick-img.svg"))
                    ],
                  ),
                ),
                Container(
                    width: 49.w,
                    height: 49.h,
                    padding: EdgeInsets.only(
                        top: 13.h, left: 12.w, right: 12.w, bottom: 7.h),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: SvgPicture.asset("assets/icons/send-icon.svg"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
