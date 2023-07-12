import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:photo_college/utils/app_constants.dart';
import 'package:photo_college/view/screen/home/home_screen.dart';
import 'package:photo_college/view/screen/on_boarding/on_boarding_screen_01.dart';
import 'package:photo_college/view/screen/on_boarding/on_boarding_screen_02.dart';
import 'package:photo_college/view/screen/on_boarding/on_boarding_screen_03.dart';
import 'package:photo_college/view/screen/splash/splash_screen.dart';
import 'di_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstants.appName,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            initialRoute: SplashScreen.routeName,
            getPages: [
              GetPage(
                name: SplashScreen.routeName,
                page: () => SplashScreen(),
                transition: Transition.fadeIn,
              ),
              GetPage(
                name: OnBoardingScreen01.routeName,
                page: () => OnBoardingScreen01(),
                transition: Transition.leftToRight,
                transitionDuration: Duration(milliseconds: 500),
              ),
              GetPage(
                name: OnBoardingScreen02.routeName,
                page: () => OnBoardingScreen02(),
                transition: Transition.leftToRight,
                transitionDuration: Duration(milliseconds: 500),
              ),
              GetPage(
                name: OnBoardingScreen03.routeName,
                page: () => OnBoardingScreen03(),
                transition: Transition.leftToRight,
                transitionDuration: Duration(milliseconds: 500),
              ),
              GetPage(
                name: HomeScreen.routeName,
                page: () => HomeScreen(),
                transition: Transition.leftToRight,
                transitionDuration: Duration(milliseconds: 500),
              ),
            ],
          );
        });
  }
}
