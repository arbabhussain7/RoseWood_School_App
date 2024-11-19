import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hla_app/Screens/Splash/views/splash_screen.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/binding/bindings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialBinding: BindingsScreen(),
            title: 'HLA App',
            theme: ThemeData(
              scrollbarTheme: const ScrollbarThemeData(
                  thumbColor: WidgetStatePropertyAll(primaryColor),
                  interactive: true,
                  minThumbLength: 12,
                  radius: Radius.circular(12),
                  trackColor: WidgetStatePropertyAll(dWhiteColor)),
              scaffoldBackgroundColor: whiteColor,
              primaryColor: primaryColor,
              progressIndicatorTheme: const ProgressIndicatorThemeData(
                color: primaryColor,
                circularTrackColor: primaryColor,
              ),
              primarySwatch: Colors.blue,
              textSelectionTheme: const TextSelectionThemeData(
                  cursorColor: primaryColor,
                  selectionColor: primaryColor,
                  selectionHandleColor: primaryColor),
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: const SplashScreen());
      },
    );
  }
}
