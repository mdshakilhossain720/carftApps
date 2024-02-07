
import 'package:craftapps/data/model/product_by_remark_model.dart';
import 'package:craftapps/data/services/network_services.dart';
import 'package:craftapps/data/utilits/urls.dart';
import 'package:get/get.dart';



class ProductByRemarkController extends GetxController{
  bool getproductremarkinprogress=false;
  ProductByRemarkModel productByRemarkModel=ProductByRemarkModel();
  bool get productinprogress=>getproductremarkinprogress;
   ProductByRemarkModel get productRemarkProudct=>productByRemarkModel;

  Future<bool>getProductRemar() async {
      getproductremarkinprogress=true;
      update();
      final response=await NetworkCall.getRequest(url: Urls.productPopular);
      if(response.Success){
         productByRemarkModel=ProductByRemarkModel.fromJson(response.returnData);
        update();
        return true;
      }else{
        update();
        return false;
      }
  }
}