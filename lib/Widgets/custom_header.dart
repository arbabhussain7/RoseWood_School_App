import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

// ignore: must_be_immutable
class CustomHeader extends StatelessWidget {
  CustomHeader({
    required this.text,
    super.key,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset("assets/icons/back-arrow-com.svg")),
        Text(
          text,
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
