import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/newSchedule/views/add_new_schedule.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custome_schedule_teacher_students.dart';

class AScheduleScreen extends StatelessWidget {
  const AScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: Text(
                "Recent Scheduled Classes",
                style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: darkBlackColor),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            SizedBox(
              height: 511.h,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Slidable(
                    endActionPane:
                        ActionPane(motion: ScrollMotion(), children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 52.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: redAccentColor.withOpacity(0.1)),
                            child: Center(
                                child: SvgPicture.asset(
                                    "assets/icons/delete-icon.svg")),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            width: 52.w,
                            height: 50.h,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: lightwhiteColor),
                            child: Center(
                                child: SvgPicture.asset(
                                    "assets/icons/edit-icon.svg")),
                          ),
                        ],
                      )
                    ]),
                    child: CustomScheduleTeacherStudents(
                      bordercolors: listOfBorderColors[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 12.h,
                  );
                },
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(() => AddNewSchedule());
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 171.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/add-icon.svg"),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        "New Schedule",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: whiteColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            )
          ],
        ),
      ),
    );
  }
}
