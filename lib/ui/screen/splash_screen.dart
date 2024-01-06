import 'dart:async';

import 'package:craftapps/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottomnavbar.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  void initState() {
   Future.delayed(Duration(seconds: 3)).then((value){
     Get.to(BottomNavbar());

   });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Center(child: Image.asset("asserts/image/logoc.png",width: 120,))),
          Column(
            children: [
              CircularProgressIndicator(
                color: primarycolor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Version 1.0",style: TextStyle(color: greycolor),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
