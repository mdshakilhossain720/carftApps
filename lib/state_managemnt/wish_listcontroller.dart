
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class wishListController extends GetxController{
  
  bool _wishinprogres=false;
  bool get wishlistinprogres=>_wishinprogres;
  Future<bool>getwilishList(wishlistId) async {
    _wishinprogres=true;
    update();
    final response=await NetworkCall.getRequest(url:'/CreateWishList/${wishlistId}');
    _wishinprogres=false;
    if(response.Success){
      update();
      return true;
    }
    else{
      update();
      return false;
    }
  }
  

}