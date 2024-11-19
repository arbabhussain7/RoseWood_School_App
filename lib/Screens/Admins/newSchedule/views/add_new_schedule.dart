import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Admins/newSchedule/components/custom_TimeWeek_dialog_box.dart';
import 'package:hla_app/Screens/Admins/newSchedule/components/custom_select_students.dart';
import 'package:hla_app/Screens/Admins/newSchedule/components/custom_select_teacher.dart';
import 'package:hla_app/Screens/Admins/newSchedule/components/custom_selection_dialog_box.dart';
import 'package:hla_app/Screens/Admins/newSchedule/components/custom_success_dialog_box.dart';
import 'package:hla_app/Screens/Admins/newSchedule/controllers/new_Schedule_controller.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_header.dart';
import 'package:hla_app/Widgets/custom_textformfield.dart';

class AddNewSchedule extends GetView<NewScheduleController> {
  const AddNewSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    final NewScheduleController controller = Get.put(NewScheduleController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.h),
                CustomHeader(text: "Schedule New Class"),
                SizedBox(height: 12.h),
                Text(
                  "Class Title",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  hintText: 'App Development',
                  inputType: TextInputType.text,
                  onChanged: (value) {
                    controller.updateClassTitle(value);
                  },
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Student",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomSelectStudents(),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Teacher",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomSelectTeacher(),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Location of Lesson",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomSelectionDialogBox(),
                    );
                    print("Helooos");
                  },
                  child: CustomTextFormField(
                      hintText: 'Select', inputType: TextInputType.none),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Time Duration",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomTimeweekDialogBox(),
                    );
                    print("Helooos");
                  },
                  child: CustomTextFormField(
                      hintText: '10:00 am - 11:00 am',
                      inputType: TextInputType.none),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Days of Week",
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTextFormField(
                    hintText: 'Mon - Thu', inputType: TextInputType.text),
                SizedBox(
                  height: 112.h,
                ),
                Obx(() {
                  bool isButtonEnabled = controller.classTitle.isNotEmpty;
                  return Center(
                    child: ElevatedButton(
                      onPressed: isButtonEnabled
                          ? () {
                              showDialog(
                                context: context,
                                builder: (context) => CustomSuccessDialogBox(),
                              );
                              print("Success ....");
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isButtonEnabled ? primaryColor : greyColor,
                        fixedSize: Size(335.w, 56.h),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Confirm",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
