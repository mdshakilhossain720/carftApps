
import 'package:craftapps/state_managemnt/user_login.dart';
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
  final TextEditingController emailEditingController =TextEditingController();
  final GlobalKey<FormState> globalKey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserLoginController>(
        builder: (authController){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asserts/image/logoc.png",height: 80,width: 80,),
                SizedBox(height: 16,),

                Text("Well Come Back",style: titleTextStyle),
                SizedBox(height: 4,),

                Text("Please Enter your Email Address",style: subtitle),

                customTextfield(controller: emailEditingController, validation: (String?value) {
                  if(value?.isEmpty?? true){
                    return 'Enter the email';
                  }
                  return null;
                },
                  hintext: 'Enter your Email',textInputType: TextInputType.emailAddress,),
                SizedBox(height: 16,),
                 authController.emailverifactionprogress?CircularProgressIndicator():
                 buttonresuable(title: 'Next', ontab: () async {
                  if(globalKey.currentState!.validate()){
                    final bool response=await authController.emailverifaction(emailEditingController.text);

                    if(response){
                      Get.to(OtpVerifaction(email: emailEditingController.text,));
                    }else{
                      if(mounted){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Not Emailverifaction")));

                      }

                    }
                  }
                 },),
              ],
            ),
          );
        },

      ),
    );
  }
}




