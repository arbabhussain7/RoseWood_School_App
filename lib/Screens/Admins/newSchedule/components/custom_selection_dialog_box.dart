import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class CustomSelectionDialogBox extends StatelessWidget {
  final isSelectedIndex = (-1).obs;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationDuration: Duration(milliseconds: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 335.w,
        height: 317.h,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            Text(
              "Select Location of Lesson",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
            SizedBox(height: 12.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: GridView.builder(
                  itemCount: listOfSelectLesson.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisExtent: 34,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        isSelectedIndex.value = index;
                      },
                      child: Obx(() {
                        bool isSelected = isSelectedIndex.value == index;
                        return Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 7.h, left: 7.w),
                              child: Container(
                                width: 192.w,
                                height: 28.h,
                                decoration: BoxDecoration(
                                  color: aWhiteColor,
                                  border: Border.all(
                                    color: isSelected
                                        ? primaryColor
                                        : Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: Center(
                                  child: Text(
                                    listOfSelectLesson[index],
                                    style: GoogleFonts.inter(
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (isSelected)
                              Positioned(
                                top: 2,
                                left: 2,
                                child: SvgPicture.asset(
                                  "assets/icons/check-icons.svg",
                                  width: 12.w,
                                  height: 12.h,
                                ),
                              ),
                          ],
                        );
                      }),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Divider(
                color: blackColor.withOpacity(0.05),
              ),
            ),
            Obx(() {
              return isSelectedIndex.value == 2
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on,
                                  color: yellowlightColor, size: 20.w),
                              SizedBox(width: 4.w),
                              Text(
                                "Add Location (Optional)",
                                style: TextStyle(
                                    color: yellowlightColor,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            width: 229.w,
                            height: 33.h,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: lightwhiteColor),
                            ),
                            child: TextFormField(
                                style: GoogleFonts.inter(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w500,
                                  color: darkBlackColor.withOpacity(0.5),
                                ),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 15.h, left: 12.w),
                                    hintText: "Choose from Map",
                                    hintStyle: GoogleFonts.inter(
                                        fontSize: 7.sp,
                                        fontWeight: FontWeight.w500,
                                        color: darkBlackColor.withOpacity(0.5)),
                                    border: InputBorder.none)),
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                    )
                  : SizedBox.shrink();
            }),
            Obx(() {
              return isSelectedIndex.value == 3
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/icons/link-icon.svg"),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Add Class Link",
                                style: TextStyle(
                                    color: yellowlightColor,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            width: 229.w,
                            height: 33.h,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: lightwhiteColor),
                            ),
                            child: TextFormField(
                                style: GoogleFonts.inter(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w500,
                                  color: darkBlackColor.withOpacity(0.5),
                                ),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 15.h, left: 12.w),
                                    hintText:
                                        "http:classroom.google/32j43hi3jk32h4",
                                    hintStyle: GoogleFonts.inter(
                                        fontSize: 7.sp,
                                        fontWeight: FontWeight.w500,
                                        color: blackColor),
                                    border: InputBorder.none)),
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                    )
                  : SizedBox.shrink(); // Return an empty widget if not selected
            }),
            Obx(() {
              return isSelectedIndex.value == 4
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/icons/link-icon.svg"),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Add Learning Resources Link",
                                style: TextStyle(
                                    color: yellowlightColor,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            width: 229.w,
                            height: 33.h,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: lightwhiteColor),
                            ),
                            child: TextFormField(
                                style: GoogleFonts.inter(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w500,
                                  color: darkBlackColor.withOpacity(0.5),
                                ),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 15.h, left: 12.w),
                                    hintText:
                                        "http:classroom.google/32j43hi3jk32h4",
                                    hintStyle: GoogleFonts.inter(
                                        fontSize: 7.sp,
                                        fontWeight: FontWeight.w500,
                                        color: blackColor),
                                    border: InputBorder.none)),
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                    )
                  : SizedBox.shrink();
            }),
            Obx(() {
              return isSelectedIndex.value == 5
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/icons/link-icon.svg"),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Add Online Course Link",
                                style: TextStyle(
                                    color: yellowlightColor,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            width: 229.w,
                            height: 33.h,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(color: lightwhiteColor),
                            ),
                            child: TextFormField(
                                style: GoogleFonts.inter(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w500,
                                  color: darkBlackColor.withOpacity(0.5),
                                ),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 15.h, left: 12.w),
                                    hintText:
                                        "http:udemy.appdevelopment/32j43hi3jk32h4",
                                    hintStyle: GoogleFonts.inter(
                                        fontSize: 7.sp,
                                        fontWeight: FontWeight.w500,
                                        color: blackColor),
                                    border: InputBorder.none)),
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                    )
                  : SizedBox.shrink();
            }),
            Spacer(),
            Obx(() {
              return ElevatedButton(
                onPressed: isSelectedIndex.value != -1
                    ? () {
                        Get.back();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isSelectedIndex.value != -1 ? primaryColor : greyColor,
                  fixedSize: Size(205.w, 34.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Confirm",
                      style: GoogleFonts.inter(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }
}
