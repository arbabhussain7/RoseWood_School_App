import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/Parents/home/contollers/parent_home_controller.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_timetable.dart';

class ParentHomeScreen extends GetView<ParentHomeController> {
  const ParentHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.h),
              Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 30,
                    backgroundImage:
                        AssetImage("assets/images/profile-img.png"),
                  ),
                  SizedBox(width: 12.w),
                  RichText(
                    text: TextSpan(
                      text: "Student",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: greyColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "\nAlexa Jhons",
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: blackAccentColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    children: [
                      const Icon(Icons.arrow_back, color: Colors.transparent),
                      Obx(
                        () => DropdownButton<String>(
                          icon: SvgPicture.asset(controller.isDropdownOpen.value
                              ? "assets/icons/dropUp-icon.svg"
                              : "assets/icons/calendar-dropdown.svg"),
                          underline: SizedBox.shrink(),
                          onChanged: (String? newValue) {
                            if (newValue == "Alexa Jhons") {
                              controller.selectAlexa();
                            } else if (newValue == "Natalia Blath") {
                              controller.selectNatalia();
                            }
                          },
                          items: <String>['Alexa Jhons', 'Natalia Blath']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      value == 'Alexa Jhons'
                                          ? "assets/images/profile-img.png"
                                          : "assets/images/parent_img.png",
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    value,
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: lightblackColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Obx(() {
                                    if ((value == 'Alexa Jhons' &&
                                            controller.isAlexaSelected.value) ||
                                        (value == 'Natalia Blath' &&
                                            controller
                                                .isNataliaSelected.value)) {
                                      return SvgPicture.asset(
                                          "assets/icons/check-icons.svg");
                                    } else {
                                      return SizedBox.shrink();
                                    }
                                  }),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 33.h),
              Text(
                "On Going",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: lightBlackColor,
                ),
              ),
              SizedBox(height: 22.h),
              Container(
                // width: 350.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: greenAccentColor,
                  border: Border.all(color: greenColor.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: greenColor,
                        radius: 25.0,
                        child: Image.asset(
                          "assets/images/user-img.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "English Class",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: lightblackColor,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Online",
                            style: GoogleFonts.inter(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  minRadius: 12,
                                  backgroundImage: AssetImage(
                                      "assets/images/teacher-img.png"),
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                  "Sir Adnan",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 6.w,
                                  height: 6.h,
                                  decoration: const BoxDecoration(
                                    color: darkGreenColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  " On Going",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: darkGreenColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today’s Classes",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: yellowlightColor),
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 321.h,
                child: ListView.separated(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomTimeTable(
                        borderColor: listOfBorderColors[index],
                        color: listOfColors[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15.h,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
