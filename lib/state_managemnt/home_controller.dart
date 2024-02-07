
import 'package:craftapps/data/model/homeslider.dart';
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  bool _homeProgress=false;
  homeslider _homeslider=homeslider();
 bool get homeProgress=>_homeProgress;
 homeslider get homeSliders=>_homeslider;
  Future<bool>getHomeSlider() async {
    _homeProgress=true;
    update();
    final response=await NetworkCall.getRequest(url: 'ListProductSlider');
    _homeProgress=false;
    if(response.Success){
      _homeslider=homeslider.fromJson(response.returnData);
      update();
      return true;

    }else{
      update();
      return false;
    }

  }

}