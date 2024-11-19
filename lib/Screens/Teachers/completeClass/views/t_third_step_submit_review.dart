import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/completeClass/component/t_class_Review_header.dart';
import 'package:hla_app/Screens/Teachers/completeClass/controller/t_class_review_controller.dart';
import 'package:hla_app/Screens/Teachers/completeClass/views/t_four_step_submit_review.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_button.dart';

class TThirdStepSubmitReview extends GetView<TClassReviewController> {
  const TThirdStepSubmitReview({super.key});

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
                "What was the objective of the lesson?",
                style: GoogleFonts.inter(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                width: 334.w,
                height: 121.h,
                decoration: BoxDecoration(
                    color: whiteColor,
                    border: Border.all(color: lightwhiteColor),
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                          color: eWhiteColor.withOpacity(0.24),
                          blurRadius: 2,
                          spreadRadius: 0,
                          offset: Offset(0, 0))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: TextFormField(
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: darkBlackColor.withOpacity(0.5)),
                    decoration: InputDecoration(
                        hintText: "Enter Objective of Lesson",
                        hintStyle: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: darkBlackColor.withOpacity(0.5)),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const Spacer(),
              CustomButton(
                  text: "Next",
                  color: primaryColor,
                  onpressed: () {
                    controller.nextStep();
                    Get.to(() => TFourStepSubmitReview());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
