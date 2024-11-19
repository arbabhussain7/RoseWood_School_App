import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';
import 'package:hla_app/Widgets/custom_timetable.dart';

class ViewClassesScreen extends StatelessWidget {
  const ViewClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              CustomHeader(
                text: "Today’s Classes",
              ),
              SizedBox(
                height: 22.h,
              ),
              Expanded(
                  child: ListView.separated(
                itemCount: listOfColors.length,
                itemBuilder: (context, index) {
                  return CustomTimeTable(
                    color: listOfColors[index],
                    borderColor: listOfBorderColors[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 12.h,
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
