import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController{
  static String? _token;
 static String? get token=>_token;

  Future<bool>isLoging() async {
   gettoken();
   if(_token==null){
     return false;
   }else{
     return true;
   }

  }

  Future<void> saveData(String userToken) async {
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    _token=userToken;
   await sharedPreferences.setString('craft_token', userToken);

  }
  Future<void>gettoken() async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    _token=sharedPreferences.getString('craft_token');

  }
  Future<void>clear() async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
   await sharedPreferences.clear();
  }
}