import 'package:craftapps/state_managemnt/bottom_navbar%20_controller.dart';
import 'package:craftapps/ui/screen/cart.dart';
import 'package:craftapps/ui/screen/home_page.dart';
import 'package:craftapps/ui/screen/wilish_list.dart';
import 'package:craftapps/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'categroy_screen.dart';
class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  BottomNavBarController bottomNavBarController=Get.put(BottomNavBarController());

  final List<Widget>_screen=[
    HomePage(),
    CatagoryScreen(),
    WilishScreen(),
    CartScreen(),
  ];
  int selectindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GetBuilder<BottomNavBarController>(builder:(controller){
        return _screen[controller.SelectIndex];
      }),
      bottomNavigationBar: GetBuilder<BottomNavBarController>(builder:(controller) {
        return BottomNavigationBar(
            onTap: (value) {
              controller.changeIndex(value);

              // selectindex = value;
              // if (mounted) {
              //   setState(() {
              //
              //   });
              // }
            },
            selectedItemColor: primarycolor,
            unselectedItemColor: greycolor,
            showSelectedLabels: true,
            currentIndex: controller.SelectIndex,
            items: [

              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: "Catgeroy"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Wilish"),


            ]);

      }
      ),
    );
  }
}
