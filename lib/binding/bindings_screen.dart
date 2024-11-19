import 'package:get/get.dart';
import 'package:hla_app/Screens/Admins/addNewUser/controllers/addNewUser_controller.dart';
import 'package:hla_app/Screens/Admins/monthlyPlan/controllers/a_monthly_plan_controllers.dart';
import 'package:hla_app/Screens/Admins/navigation/controllers/A_navigation_controller.dart';
import 'package:hla_app/Screens/Admins/newSchedule/controllers/new_Schedule_controller.dart';
import 'package:hla_app/Screens/Admins/parentCategoryDetail/controllers/parents_category_controller.dart';
import 'package:hla_app/Screens/Admins/studentCategoryDetail/controllers/user_detail_profile_controller.dart';
import 'package:hla_app/Screens/Admins/teacherCategoryDetail/controllers/teacher_category_controller.dart';
import 'package:hla_app/Screens/Admins/users/controllers/users_controller.dart';
import 'package:hla_app/Screens/Admins/wellnessPlan/controllers/a_wellness_plan_controllers.dart';
import 'package:hla_app/Screens/Parents/home/contollers/parent_home_controller.dart';
import 'package:hla_app/Screens/Parents/navigation/controllers/p_navbar_controller.dart';
import 'package:hla_app/Screens/Splash/controllers/category_controller.dart';
import 'package:hla_app/Screens/Students/navigation/controllers/navgation_controller.dart';
import 'package:hla_app/Screens/Students/timetable/controllers/timetable_controller.dart';
import 'package:hla_app/Screens/Teachers/completeClass/controller/t_class_review_controller.dart';
import 'package:hla_app/Screens/Teachers/home/controllers/teacher_controller.dart';
import 'package:hla_app/Screens/Teachers/navigation/controllers/navgation_controller.dart';
import 'package:hla_app/Screens/Teachers/task/controller/mytask_controller.dart';
import 'package:hla_app/Screens/Teachers/timetable/controllers/t_timetable_controller.dart';
import 'package:hla_app/Screens/authentication/controllers/login_controllers.dart';
import 'package:hla_app/Screens/calendar.dart/calander_controller.dart';

class BindingsScreen extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryController(), fenix: true);
    Get.lazyPut(() => LoginControllers(), fenix: true);
    // Get.lazyPut(() => CustomTextFieldController(), fenix: true);
    Get.lazyPut(() => NavgationController(), fenix: true);
    Get.lazyPut(() => TimetableController(), fenix: true);
    Get.lazyPut(() => TNavgationController(), fenix: true);
    Get.lazyPut(() => TeacherController(), fenix: true);
    Get.lazyPut(() => TTimetableController(), fenix: true);
    Get.lazyPut(() => TClassReviewController(), fenix: true);
    Get.lazyPut(() => MytaskController(), fenix: true);
    Get.lazyPut(() => CalanderController(), fenix: true);
    Get.lazyPut(() => PNavbarController(), fenix: true);
    Get.lazyPut(() => ParentHomeController(), fenix: true);
    Get.lazyPut(() => ANavigationController(), fenix: true);
    Get.lazyPut(() => UsersController(), fenix: true);
    Get.lazyPut(() => AddnewuserController(), fenix: true);
    Get.lazyPut(() => StudentCategoryController(), fenix: true);
    Get.lazyPut(() => TeacherCategoryController(), fenix: true);
    Get.lazyPut(() => ParentsCategoryController(), fenix: true);
    Get.lazyPut(() => NewScheduleController(), fenix: true);
    Get.lazyPut(() => AMonthlyPlanControllers(), fenix: true);
    Get.lazyPut(() => AWellnessPlanControllers(), fenix: true);
  }
}
