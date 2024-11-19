import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/completeClass/component/t_class_Review_header.dart';
import 'package:hla_app/Screens/Teachers/completeClass/controller/t_class_review_controller.dart';
import 'package:hla_app/Screens/Teachers/completeClass/views/t_third_step_submit_review.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_button.dart';

class TSecondStepSubmitReview extends GetView<TClassReviewController> {
  const TSecondStepSubmitReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              TClassReviewHeader(),
              SizedBox(
                height: 28.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Obx(() => LinearProgressIndicator(
                          minHeight: 12.h,
                          borderRadius: BorderRadius.circular(16.r),
                          value: controller.currentStep.value /
                              controller.totalSteps,
                          backgroundColor: lightGreysColor,
                          color: yellowlightColor,
                        )),
                  ),
                  SizedBox(width: 12.w),
                  Obx(() => Text(
                        '${controller.currentStep.value}/${controller.totalSteps}',
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: greyColor),
                      )),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                "Did the student engage in the lesson?",
                style: GoogleFonts.inter(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
              ),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 460.h,
                child: ListView.separated(
                  itemCount: listOfReviewSec.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.changeTab(index);
                      },
                      child: Obx(() => Container(
                            width: 335.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: controller.isSelected.value == index
                                  ? darkGreenColor
                                  : ligherGreyColor,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                listOfReviewSec[index],
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: controller.isSelected.value == index
                                      ? whiteColor
                                      : lightblackColor,
                                ),
                              ),
                            ),
                          )),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 12.h,
                    );
                  },
                ),
              ),
              const Spacer(),
              CustomButton(
                  text: "Next",
                  color: primaryColor,
                  onpressed: () {
                    controller.nextStep();
                    Get.to(() => TThirdStepSubmitReview());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
