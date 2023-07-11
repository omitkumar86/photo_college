import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:photo_college/view/screen/home/home_screen.dart';
import '../../../utils/app_color_resources.dart';
import '../../../utils/app_style.dart';

class OnBoardingScreen03 extends StatelessWidget {
  static const String routeName = '/on_boarding_screen_03';
  const OnBoardingScreen03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.onBoardingScreenColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/on_boarding_03.jpg'), fit: BoxFit.cover)),
      ),
      bottomNavigationBar: Container(
        color: AppColorResources.onBoardingScreenColor,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Get.offNamedUntil(HomeScreen.routeName, (route) => false);
              },
              child: Text(
                "        ",
                style: myStyleInter(
                    20.sp, AppColorResources.cameraColor, FontWeight.w700),
              ),
            ),

            Row(
              children: [
                Image.asset('assets/images/second.png'),
                SizedBox(width: 8.w,),
                Image.asset('assets/images/third.png'),
                SizedBox(width: 8.w,),
                Image.asset('assets/images/first.png'),
              ],
            ),

            InkWell(
              onTap: (){
                Get.offNamedUntil(HomeScreen.routeName, (route) => false);
              },
              child: Container(
                alignment: Alignment.center,
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColorResources.circleColor2),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColorResources.circleColor,
                    border: Border.all(
                        width: 1.w, color: AppColorResources.borderColor),
                  ),
                  child: Text(
                    "Done",
                    style: myStyleInter(
                        12.sp, AppColorResources.primaryGreen, FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
