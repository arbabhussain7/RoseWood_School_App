import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Students/classDetail/component/class_teacher_component.dart';
import 'package:hla_app/Screens/Teachers/completeClass/component/t_class_Review_header.dart';
import 'package:hla_app/Screens/Teachers/completeClass/views/t_first_step_submit_review_.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_button.dart';

class TCompleteClass extends StatelessWidget {
  const TCompleteClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6.h,
              ),
              TClassReviewHeader(),
              SizedBox(
                height: 28.h,
              ),
              Row(
                children: [
                  Text(
                    "App Development",
                    style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: lightblackColor),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 96.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                        color: darkGreenColor,
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Completed",
                        style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              const ClasssTeacherComponent(),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: yellowlightColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
                  child: Text(
                    "Mon,10:00 am - 11:00 am ",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Class Type",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBlackColor.withOpacity(0.9)),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Online",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: primaryColor),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                    text: "Give Review",
                    color: primaryColor,
                    onpressed: () {
                      Get.to(() => TFirstStepSubmitReview());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
