import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/calendar.dart/calander_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalander extends GetView<CalanderController> {
  const CustomCalander({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: double.infinity,
          height: controller.calendarFormat.value == CalendarFormat.week
              ? 210.h
              : 480.h,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.05),
            border: const Border(bottom: BorderSide(color: greysColor)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Obx(() => Text(
                      " ${controller.monthName}",
                      style: GoogleFonts.inter(
                        fontSize: 31.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor,
                      ),
                    )),
                SizedBox(
                  height: 12.h,
                ),
                Obx(() {
                  return Column(
                    children: [
                      TableCalendar(
                        firstDay: DateTime.utc(2023, 1, 1),
                        lastDay: DateTime.utc(2025, 12, 31),
                        focusedDay: controller.focusedDay.value,
                        selectedDayPredicate: (day) =>
                            isSameDay(day, controller.selectedDay.value),
                        calendarFormat: controller.calendarFormat.value,
                        availableCalendarFormats: const {
                          CalendarFormat.week: 'Week',
                          CalendarFormat.month: 'Month',
                        },
                        headerVisible: false, // Hide default header
                        calendarStyle: CalendarStyle(
                          tablePadding: EdgeInsets.only(top: 12.w),
                          disabledDecoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          todayDecoration: BoxDecoration(
                            color: greyAccentColor,
                            borderRadius: BorderRadius.circular(13.r),
                          ),
                          selectedDecoration: BoxDecoration(
                            color: greyAccentColor,
                            borderRadius: BorderRadius.circular(13.r),
                          ),
                          selectedTextStyle:
                              GoogleFonts.inter(color: blackAccentColor),
                          defaultTextStyle: GoogleFonts.inter(
                              fontSize: 16, color: blackColor),
                        ),
                        onDaySelected: (selectedDay, focusedDay) {
                          controller.onDaySelected(selectedDay, focusedDay);
                        },
                        onFormatChanged: (format) {
                          if (controller.calendarFormat.value != format) {
                            controller.changeCalendarFormat(format);
                          }
                        },
                      ),
                      GestureDetector(
                          onTap: () {
                            print("######");
                            controller.toggleCalendarFormat();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 14.h),
                            child: Container(
                              width: 61.w,
                              height: 2.h,
                              decoration: BoxDecoration(
                                  color: blackColor,
                                  border: Border.all(color: blackColor)),
                              child: SizedBox(
                                height: 12.w,
                              ),
                            ),
                          ))
                    ],
                  );
                }),
              ],
            ),
          ),
        ));
  }
}
