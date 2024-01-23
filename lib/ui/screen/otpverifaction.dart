
import 'package:craftapps/state_managemnt/user_login.dart';
import 'package:craftapps/ui/screen/home_page.dart';
import 'package:craftapps/ui/utils/app_colors.dart';
import 'package:craftapps/ui/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/button_resuable.dart';
import '../widgets/commontextfield.dart';
class OtpVerifaction extends StatefulWidget {
  final String email;
  const OtpVerifaction({super.key, required this.email});

  @override
  State<OtpVerifaction> createState() => _OtpVerifactionState();
}

class _OtpVerifactionState extends State<OtpVerifaction> {
  final TextEditingController otpEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserLoginController>(
        builder: (authController) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asserts/image/logoc.png",height: 80,width: 80,),
                SizedBox(height: 16,),

                Text("Enter the Otp Code",style: titleTextStyle),
                SizedBox(height: 4,),

                Text("8 digit code in Otp",style: subtitle),
                SizedBox(height: 16,),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,

                  ),
                  animationDuration: Duration(milliseconds: 300),
                  //backgroundColor: Colors.blue.shade50,
                 // enableActiveFill: true,

                  controller: otpEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },


                ),

                SizedBox(height: 16,),
                authController.otpverifactionprogress? CircularProgressIndicator():
                buttonresuable(title: 'Next', ontab: () async {
                  final response=await authController.otpverifaction(widget.email,otpEditingController.text);
                  if(response){
                    Get.to(HomePage());
                  }else{
                    Get.showSnackbar(GetSnackBar(
                      title: 'Otp Verifaction Fail',
                      message: 'Cheek your email',
                    ));
                  }

                },),
                SizedBox(height: 16,),
                RichText(text: TextSpan(
                  text: 'Otp code is miniute ',
                  style: TextStyle(
                    fontSize: 12,
                    color: greycolor,
                  ),
                  children: const <TextSpan>[
                    TextSpan(text: '120', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink)),

                  ],
                ),

                ),
                SizedBox(height: 8,),

                TextButton(onPressed: (){}, child: Text("Resend Code",style:
                TextStyle(color: greycolor.withOpacity(0.5)),))
              ],
            ),
          );
        }
      ),
    );
  }
}