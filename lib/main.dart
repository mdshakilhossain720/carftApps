import 'package:craftapps/state_managemnt/auth_controller.dart';
import 'package:craftapps/state_managemnt/bottom_navbar%20_controller.dart';
import 'package:craftapps/state_managemnt/home_controller.dart';
import 'package:craftapps/state_managemnt/user_login.dart';
import 'package:craftapps/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state_managemnt/product_by_remark_controller.dart';
import 'ui/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetXBindings(),
      home: SpalshScreen(),


      themeMode: ThemeMode.dark,

      darkTheme: ThemeData(

        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor:Colors.purpleAccent,
            textStyle: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w500,letterSpacing: 0.6,),),

        ),),


      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 1,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: greycolor,
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: primarycolor,
            textStyle: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w500,letterSpacing: 0.6,),),

        ),
      ),

    );
  }
}

class GetXBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavBarController());
    Get.put(UserLoginController());
    Get.put(HomeController());
    Get.put(ProductByRemarkController());
    Get.put(AuthController());

  }

}

