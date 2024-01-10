
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class UserLoginController extends GetxController{
  bool _emailverifactionprogress=false;
  bool get emailverifactionprogress=> _emailverifactionprogress;
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
  
}