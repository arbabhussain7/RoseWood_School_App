import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/completeClass/component/t_class_Review_header.dart';
import 'package:hla_app/Screens/Teachers/completeClass/controller/t_class_review_controller.dart';
import 'package:hla_app/Screens/Teachers/completeClass/views/t_six_step_submit_review.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_button.dart';

class TFiveStepSubmitReview extends GetView<TClassReviewController> {
  const TFiveStepSubmitReview({super.key});

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
                "Has CPOMS been updated if required?",
                style: GoogleFonts.inter(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: lightblackColor),
              ),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                  itemCount: listOfReviewFirst.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.changeTab(index);
                      },
                      child: Obx(() => Container(
                            width: 160.w,
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
                                listOfReviewFirst[index],
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
                      width: 15.h,
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
                    Get.to(() => TSixStepSubmitReview());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
