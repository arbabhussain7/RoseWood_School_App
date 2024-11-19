import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class TTimetableController extends GetxController {
  var selectedDay = DateTime.utc(2024, 6, 20).obs;
  var focusedDay = DateTime.utc(2024, 6, 20).obs;
  var calendarFormat = CalendarFormat.week.obs;
  var isWeekView = true.obs;

  String get monthName => DateFormat('MMMM, yyyy').format(focusedDay.value);

  void onDaySelected(DateTime day, DateTime focus) {
    selectedDay.value = day;
    focusedDay.value = focus;
  }

  void changeCalendarFormat(CalendarFormat format) {
    calendarFormat.value = format;
    isWeekView.value = (format == CalendarFormat.week);
  }

  void toggleCalendarFormat() {
    if (calendarFormat.value == CalendarFormat.week) {
      calendarFormat.value = CalendarFormat.month;
      isWeekView.value = false;
    } else {
      calendarFormat.value = CalendarFormat.week;
      isWeekView.value = true;
    }
  }
}
