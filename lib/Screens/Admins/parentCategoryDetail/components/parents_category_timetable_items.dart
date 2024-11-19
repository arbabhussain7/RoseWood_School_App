import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/calendar.dart/calendarTab.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_timetable.dart';

class ParentsCategoryTimetableItems extends StatelessWidget {
  const ParentsCategoryTimetableItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCalander(),
          SizedBox(
            height: 22.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      text: "20 June, 2024",
                      style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: "(Today)",
                            style: GoogleFonts.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                                color: greyColor))
                      ]),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    color: yellowlightColor,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 431.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return CustomTimeTable(
                    color: listOfColors[index],
                    borderColor: listOfBorderColors[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 16.h,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
