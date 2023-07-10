import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:photo_college/utils/app_color_resources.dart';
import 'package:photo_college/utils/app_style.dart';
import '../../../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';
  SplashScreen({super.key});

  final splashController = Get.find<SplashScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_bg.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          color: AppColorResources.primaryBlack.withOpacity(0.5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// For Circle
                Container(
                  alignment: Alignment.center,
                  height: 130.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColorResources.circleColor2),
                  child: Container(
                    alignment: Alignment.center,
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColorResources.circleColor,
                      border: Border.all(
                          width: 1.w, color: AppColorResources.borderColor),
                    ),
                    child: Icon(
                      Icons.camera,
                      color: AppColorResources.cameraColor,
                    ),
                  ),
                ),

                SizedBox(
                  height: 30.h,
                ),

                /// For Text
                Text(
                  "Photo College",
                  style: myStyleInter(
                      28.sp, AppColorResources.primaryWhite, FontWeight.w400),
                ),

                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "make your picture looks beauty\nand show the world creativity",
                  style: myStyleAbel(
                      20.sp, AppColorResources.primaryWhite, FontWeight.w400),
                  textAlign: TextAlign.center,
                ),

                /// For Loading Indicator
                //Lottie.asset('assets/lottie/loading.json',),

                SizedBox(
                  height: 30.h,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 130.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColorResources.circleColor),
                  child: Lottie.asset(
                    'assets/lottie/loading.json',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
