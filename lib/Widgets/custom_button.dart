import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.onpressed,
  });
  final String text;
  Color color;
  final Function? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h),
      child: ElevatedButton(
        onPressed: () {
          onpressed!();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: color, fixedSize: Size(335.w, 56.h)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: whiteColor),
            ),
            SvgPicture.asset("assets/icons/forward-icons.svg")
          ],
        ),
      ),
    );
  }
}
