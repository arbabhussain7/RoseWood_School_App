import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';
import 'package:hla_app/Widgets/custom_header.dart';

class ClassDetailReviews extends StatelessWidget {
  const ClassDetailReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                CustomHeader(text: "English Class"),
                SizedBox(
                  height: 18.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Text(
                    "Class Details",
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: lightBlackColor),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  height: 121.h,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Center(
                          child: Container(
                            width: 335.w,
                            height: 113.h,
                            decoration: BoxDecoration(
                                color: borderPinkColor.withOpacity(0.5),
                                border: Border.all(
                                  color: orangeColor.withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 12.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: orangeColor,
                                        radius: 25.0,
                                        child: Image.asset(
                                          "assets/images/user-img.png",
                                          width: 26.w,
                                          height: 26.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "English Class",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                                color: lightblackColor),
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Text(
                                            "Online",
                                            style: GoogleFonts.inter(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: greyColor),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 42.w,
                                      ),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 11,
                                            backgroundImage: AssetImage(
                                                "assets/images/student-imgs.png"),
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          Text(
                                            "Mr Ateeq",
                                            style: GoogleFonts.inter(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: greyColor),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Mon, 10:00 am - 11:00 am",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: lightblackColor),
                                        ),
                                        Text(
                                          "Reviewed",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: darkGreenColor),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 14.h,
                        );
                      },
                      itemCount: 1),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Teacher’s Reviews",
                  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: lightBlackColor),
                ),
                SizedBox(
                  height: 22.h,
                ),
                SizedBox(
                  height: 421.h,
                  child: ListView.separated(
                    itemCount: listOfQuestionReview.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listOfQuestionReview[index],
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: lightblackColor.withOpacity(0.9)),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Answer: ",
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: greyColor,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: listOfAnswerReview[index],
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: listOfReviewColor[index],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12.h,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
