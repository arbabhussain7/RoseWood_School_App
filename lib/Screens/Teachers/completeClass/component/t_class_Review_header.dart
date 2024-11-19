import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/completeClass/controller/t_class_review_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';

class TClassReviewHeader extends GetView<TClassReviewController> {
  const TClassReviewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              controller.previousStep();
              Get.back();
            },
            child: SvgPicture.asset("assets/icons/back-arrow-com.svg")),
        Text(
          "Give Review",
          style: GoogleFonts.inter(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: lightBlackColor),
        ),
        const Icon(
          Icons.arrow_back,
          color: Colors.transparent,
        )
      ],
    );
  }
}
