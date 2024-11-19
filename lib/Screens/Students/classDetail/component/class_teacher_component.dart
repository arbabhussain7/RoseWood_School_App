import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';

class ClasssTeacherComponent extends StatelessWidget {
  const ClasssTeacherComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/Ava-Calvar.png"),
        ),
        SizedBox(
          width: 12.w,
        ),
        Text(
          "Ava Calvar",
          style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: lightBlackColor),
        ),
      ],
    );
  }
}
