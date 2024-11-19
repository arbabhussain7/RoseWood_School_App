import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Splash/controllers/category_controller.dart';
import 'package:hla_app/Screens/authentication/views/login_screen.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Widgets/custom_button.dart';

class SelectCategories extends GetView<CategoryController> {
  SelectCategories({super.key});

  final categories = ['Student', 'Teacher', 'Parents', 'Admin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(
                height: 52.h,
              ),
              Text(
                "Select a Category to Begin",
                style: GoogleFonts.inter(
                    color: blackAccentColor,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 62.h,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(categories.length, (index) {
                    return _buildCategoryCard(categories[index], index);
                  }),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(
                () => CustomButton(
                  onpressed: controller.selectedCategoryIndex.value != -1
                      ? () {
                          Get.to(() => LoginScreen(
                                categoryIndex:
                                    controller.selectedCategoryIndex.value,
                              ));
                        }
                      : null,
                  text: "Continue",
                  color: controller.selectedCategoryIndex.value != -1
                      ? primaryColor
                      : greyColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String category, int index) {
    return Obx(() {
      bool isSelected = controller.selectedCategoryIndex.value == index;
      return GestureDetector(
        onTap: () {
          controller.selectCategory(index);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: isSelected ? primaryColor : Colors.transparent,
            ),
            boxShadow: [
              BoxShadow(
                color: blackColor.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 0,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/icons/${category.toLowerCase()}-icons.svg',
                      height: 80.h,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    category,
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: blackAccentColor,
                    ),
                  ),
                ],
              ),
              if (isSelected)
                const Positioned(
                  top: 8,
                  left: 8,
                  child: Icon(
                    Icons.check_circle,
                    color: primaryColor,
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
