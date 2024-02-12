
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  bool _cartinprogress=false;
  bool get cartinprogress=>_cartinprogress;

  Future<bool>reqcartwilish(int producId ,String size,String color) async {
    _cartinprogress=true;
    final response=await NetworkCall.postRequest(url: '/CreateCartList');
    _cartinprogress=false;
    if(response.Success){

      update();
      return true;
    }else{
      update();
      return false;
    }

  }
}