import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_color_resources.dart';
import '../../../utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  const HomeScreen({super.key});

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
          color: AppColorResources.primaryBlack.withOpacity(0.6),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                /// For Text
                Text(
                  "Photo College",
                  style: myStyleInter(
                      28.sp, AppColorResources.primaryWhite, FontWeight.w500),
                ),

                SizedBox(
                  height: 45.h,
                ),

                /// For Circle
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 125.h,
                          width: 125.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColorResources.homeCircleColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.dashboard, color: AppColorResources.primaryDeepNavy,),
                              Text(
                                "Photo College",
                                style: myStyleAbel(
                                    16.sp, AppColorResources.primaryDeepNavy, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.h,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 125.h,
                          width: 125.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColorResources.homeCircleColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit, color: AppColorResources.primaryDeepNavy,),
                              Text(
                                "Photo Edit",
                                style: myStyleAbel(
                                    16.sp, AppColorResources.primaryDeepNavy, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 125.h,
                          width: 125.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColorResources.homeCircleColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.style, color: AppColorResources.primaryDeepNavy,),
                              Text(
                                "Free Style",
                                style: myStyleAbel(
                                    16.sp, AppColorResources.primaryDeepNavy, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.h,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 125.h,
                          width: 125.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColorResources.homeCircleColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.layers, color: AppColorResources.primaryDeepNavy,),
                              Text(
                                "Remove BG",
                                style: myStyleAbel(
                                    16.sp, AppColorResources.primaryDeepNavy, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
