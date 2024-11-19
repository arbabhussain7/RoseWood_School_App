import 'package:get/get.dart';

class StudentCategoryController extends GetxController {
  var isSelectedTabIndex = 0.obs;
  final RxInt selectedIndex = (-1).obs;
  void changeTab(int index) {
    isSelectedTabIndex.value = index;
  }

  var presents = 8.obs;
  var absents = 2.obs;
  var fully = 2.obs;
  var partially = 5.2.obs;
  var Not_at = 2.2.obs;
  var exceeded = 4.4.obs;
  var hit = 2.2.obs;
  var work = 2.4.obs;
  var no = 1.obs;

  // Calculated data map for PieChart
  Map<String, double> get listOfStudentReport => {
        "Present": (presents.value / (presents.value + absents.value)) * 100,
        "Absent": (absents.value / (presents.value + absents.value)) * 100,
      };
  Map<String, double> get listOfStudentReports => {
        "Fully":
            (fully.value / (fully.value + partially.value + Not_at.value)) *
                100,
        "Partially":
            (partially.value / (fully.value + partially.value + Not_at.value)) *
                100,
        "Not at All":
            (Not_at.value / (fully.value + partially.value + Not_at.value)) *
                100,
      };
  Map<String, double> get listOfStudentReporter => {
        "Exceeded": (exceeded.value /
                (exceeded.value + hit.value + work.value + no.value)) *
            100,
        "Hit": (absents.value /
                (exceeded.value + hit.value + work.value + no.value)) *
            100,
        "Working Towards": (absents.value /
                (exceeded.value + hit.value + work.value + no.value)) *
            100,
        "No": (absents.value /
                (exceeded.value + hit.value + work.value + no.value)) *
            100,
      };
  // Colors for the PieChart
}
