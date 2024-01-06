import 'package:craftapps/ui/utils/app_colors.dart';
import 'package:craftapps/ui/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/button_resuable.dart';
import '../widgets/commontextfield.dart';
import 'otpverifaction.dart';
class VerifactionScreen extends StatefulWidget {
  const VerifactionScreen({super.key});

  @override
  State<VerifactionScreen> createState() => _VerifactionScreenState();
}

class _VerifactionScreenState extends State<VerifactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asserts/image/logoc.png",height: 80,width: 80,),
            SizedBox(height: 16,),

            Text("Well Come Back",style: titleTextStyle),
            SizedBox(height: 4,),

            Text("Please Enter your Email Address",style: subtitle),

            customTextfield(controller: TextEditingController(), validation: (String?value) {},
              hintext: 'Enter your Email',textInputType: TextInputType.emailAddress,),
             SizedBox(height: 16,),
            buttonresuable(title: 'Next', ontab: () {
              Get.to(OtpVerifaction());

            },),
          ],
        ),
      ),
    );
  }
}




