import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:photo_college/view/screen/home/home_screen.dart';
import 'package:photo_college/view/screen/on_boarding/on_boarding_screen_02.dart';
import '../../../utils/app_color_resources.dart';
import '../../../utils/app_style.dart';

class OnBoardingScreen01 extends StatelessWidget {
  static const String routeName = '/on_boarding_screen_01';
  const OnBoardingScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.onBoardingScreenColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.6,
                image: AssetImage('assets/images/on_boarding_01.jpg'), fit: BoxFit.cover)),
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
                "Skip",
                style: myStyleInter(
                    20.sp, AppColorResources.cameraColor, FontWeight.w700),
              ),
            ),

            Row(
              children: [
                Image.asset('assets/images/first.png'),
                SizedBox(width: 8.w,),
                Image.asset('assets/images/second.png'),
                SizedBox(width: 8.w,),
                Image.asset('assets/images/third.png'),
              ],
            ),

            InkWell(
              onTap: (){
                Get.offNamedUntil(OnBoardingScreen02.routeName, (route) => false);
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
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColorResources.primaryBlack,
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
