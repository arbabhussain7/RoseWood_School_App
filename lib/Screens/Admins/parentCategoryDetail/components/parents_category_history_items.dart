import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/classesDetailReview/views/class_detail_Reviews.dart';
import 'package:hla_app/Screens/Admins/parentCategoryDetail/controllers/parents_category_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class ParentsCategoryHistoryItems extends GetView<ParentsCategoryController> {
  const ParentsCategoryHistoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.r),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownButton<String>(
                  value: controller.isSelectedOption.value.isNotEmpty &&
                          listOfdropdown
                              .contains(controller.isSelectedOption.value)
                      ? controller.isSelectedOption.value
                      : null,
                  icon: SvgPicture.asset("assets/icons/dropdown-icon.svg"),
                  elevation: 6,
                  style: GoogleFonts.inter(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      controller.isSelectedOption.value = newValue;
                      Get.to(() => ClassDetailReviews());
                    }
                  },
                  items: listOfdropdown
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        SizedBox(
          height: 431.h,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 335.w,
                    height: 113.h,
                    decoration: BoxDecoration(
                        color: borderPinkColor.withOpacity(0.5),
                        border: Border.all(
                          color: pinkColor.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 12.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: pinkColor),
                                padding: const EdgeInsets.all(12),
                                child: const CircleAvatar(
                                  backgroundColor: pinkColor,
                                  backgroundImage: const AssetImage(
                                      "assets/images/user-img.png"),
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "English Class",
                                    style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: lightblackColor),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    "Online",
                                    style: GoogleFonts.inter(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: greyColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 42.w,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 22.w,
                                    height: 22.h,
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/teacher-img.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    "Sir Adnan",
                                    style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mon, 10:00 am - 11:00 am",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: lightblackColor),
                                ),
                                Text(
                                  "Reviewed",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: darkGreenColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 14.h,
                );
              },
              itemCount: 2),
        ),
      ],
    );
  }
}
