import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hla_app/Screens/Teachers/messages/views/t_chat_screen.dart';
import 'package:hla_app/Screens/constant/const.dart';
import 'package:hla_app/Screens/constant/list.dart';

class TMessagesScreen extends StatelessWidget {
  const TMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.transparent,
                  ),
                  Text(
                    "Conversations",
                    style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: darkBlackColor),
                  ),
                  SvgPicture.asset("assets/icons/Menu-icon.svg")
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                "Messages",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBlackColor),
              ),
              SizedBox(
                height: 18.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: listOfimages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => const TChatScreen());
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage(listOfimages[index]),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listOfText[index],
                                style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: lightBlackColor.withOpacity(0.9)),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "You: Works for me",
                                style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: lightBlackColor.withOpacity(0.8)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 93.w,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                listOfTimes[index],
                                style: GoogleFonts.inter(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: darkGreyColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 12.h,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
