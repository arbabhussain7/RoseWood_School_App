import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/newSchedule/controllers/new_Schedule_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class CustomTimeweekDialogBox extends GetView<NewScheduleController> {
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
              "Select Days of Week",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 104.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: GridView.builder(
                  itemCount: listOfSelectTime.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisExtent: 34,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.toggleDaySelection(index);
                      },
                      child: Obx(() {
                        bool isSelected =
                            controller.selectedDaysIndex.contains(index);
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
                                    listOfSelectTime[index],
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
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Divider(
                color: blackColor.withOpacity(0.05),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                children: [
                  Text(
                    "Repeat every Month",
                    style: GoogleFonts.inter(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        color: darkBlackColor.withOpacity(0.8)),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Obx(
                    () => SizedBox(
                      width: 23.w,
                      height: 14.h,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Switch(
                          activeColor: whiteColor,
                          activeTrackColor: primaryColor,
                          splashRadius: 50.0,
                          value: controller.isRepeatMonthly.value,
                          onChanged: (value) {
                            controller.toggleRepeatMonthly(value);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
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
                          contentPadding:
                              EdgeInsets.only(bottom: 15.h, left: 12.w),
                          hintText: "Tue - Thu",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w500,
                              color: darkBlackColor.withOpacity(0.8)),
                          border: InputBorder.none)),
                ),
              ),
            ),
            Spacer(),
            Obx(() {
              return ElevatedButton(
                onPressed: controller.selectedDaysIndex.isNotEmpty
                    ? () {
                        Get.back();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: controller.selectedDaysIndex.isNotEmpty
                      ? primaryColor
                      : greyColor,
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
