import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class TimetableController extends GetxController {
  var selectedDay = DateTime.utc(2024, 6, 20).obs;
  var focusedDay = DateTime.utc(2024, 6, 20).obs;
  var calendarFormat = CalendarFormat.week.obs;
  void onDaySelected(DateTime day, DateTime focus) {
    selectedDay.value = day;
    focusedDay.value = focus;
  }

  void changeCalendarFormat(CalendarFormat format) {
    calendarFormat.value = format;
  }
}
