
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class UserLoginController extends GetxController{
  bool _emailverifactionprogress=false;
  bool _otpverifactionprogress=false;
  bool get emailverifactionprogress=> _emailverifactionprogress;
  bool get otpverifactionprogress=>_otpverifactionprogress;
  Future<bool>emailverifaction(String email)async{
    _emailverifactionprogress=true;
    update();
    final response=await NetworkCall.getRequest(url:'/UserLogin/$email' );
    _emailverifactionprogress =false;
    if(response.Success){
      update();
      return true;
    }else{
      update();
      return false;
    }
  }

  Future<bool>otpverifaction(String email,String otp)async{
    _otpverifactionprogress=true;
    update();
    final response=await NetworkCall.getRequest(url:'/UserLogin/$email/$otp' );
    _otpverifactionprogress =false;
    if(response.Success){
      update();
      return true;
    }else{
      update();
      return false;
    }
  }
}

