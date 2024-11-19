import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/newSchedule/controllers/new_Schedule_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_textformfield.dart';

class CustomSelectStudents extends GetView<NewScheduleController> {
  const CustomSelectStudents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.bottomSheet(
              // isScrollControlled: true,
              Container(
            width: 375.w,
            height: 500.h,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(24.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Center(
                    child: Text(
                      "Select Student",
                      style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        border: Border.all(color: blackColor.withOpacity(0.1))),
                    child: TextFormField(
                      readOnly: true,
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: darkBlackColor.withOpacity(0.8)),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14.h),
                          filled: true,
                          fillColor: aWhiteColor,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                                "assets/icons/search-icon.svg"),
                          ),
                          hintText: "Alex",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: darkBlackColor.withOpacity(0.8)),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SizedBox(
                    height: 271.h,
                    width: 354.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: Scrollbar(
                            thumbVisibility: true,
                            trackVisibility: true,
                            thickness: 6,
                            radius: Radius.circular(12.r),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListView.separated(
                                    itemCount: listOfButtombarSheet.length,
                                    itemBuilder: (context, index) {
                                      return Obx(
                                        () => GestureDetector(
                                          onTap: () {
                                            controller.selectedIndex.value =
                                                index;
                                          },
                                          child: Container(
                                            width: 314.w,
                                            height: 67.h,
                                            decoration: BoxDecoration(
                                              color: listOfButtombarSheetColor[
                                                  index],
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              border: Border.all(
                                                color: controller.selectedIndex
                                                            .value ==
                                                        index
                                                    ? primaryColor
                                                    : Colors.transparent,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 8.w),
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      listOfButtombarSheetimg[
                                                          index]),
                                                ),
                                                SizedBox(width: 8.w),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      listOfButtombarSheet[
                                                          index],
                                                      style: GoogleFonts.inter(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: darkBlackColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      "alex@gmail.com",
                                                      style:
                                                          GoogleFonts.manrope(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: darkBlackColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                if (controller
                                                        .selectedIndex.value ==
                                                    index)
                                                  SvgPicture.asset(
                                                      "assets/icons/check-icons.svg"),
                                                SizedBox(
                                                  width: 18.w,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: 12.h,
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          fixedSize: Size(299.w, 56.h)),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: whiteColor),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
        },
        child: CustomTextFormField(
            hintText: "+  Select Student", inputType: TextInputType.none));
  }
}
