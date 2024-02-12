
import 'package:craftapps/data/model/product_by_remark_model.dart';
import 'package:craftapps/data/services/network_services.dart';
import 'package:craftapps/data/utilits/urls.dart';
import 'package:get/get.dart';



class ProductByRemarkController extends GetxController{
  bool getproductremarkinprogress=false;
  bool newproductremarkinprogress=false;
  bool popularproductremarkinprogress=false;
  ProductByRemarkModel productByRemarkModel=ProductByRemarkModel();
  ProductByRemarkModel newProdcut=ProductByRemarkModel();
  ProductByRemarkModel specialProdcut=ProductByRemarkModel();
  bool get productinprogress=>getproductremarkinprogress;
  bool get newproductinprogress=>newproductremarkinprogress;
  bool get popularproductinprogress=>popularproductremarkinprogress;
   ProductByRemarkModel get productRemarkProudct=>productByRemarkModel;

  Future<bool>getProductRemar() async {

      getproductremarkinprogress=true;
      update();
      final response=await NetworkCall.getRequest(url:'/ListProductByRemark/popular');
      if(response.Success){
         productByRemarkModel=ProductByRemarkModel.fromJson(response.returnData);
        update();
        return true;
      }else{
        update();
        return false;
      }
  }
  Future<bool>newProductRemar() async {

    newproductremarkinprogress=true;
    update();
    final response=await NetworkCall.getRequest(url:'/ListProductByRemark/new');
    if(response.Success){
      newProdcut=ProductByRemarkModel.fromJson(response.returnData);
      update();
      return true;
    }else{
      update();
      return false;
    }
  }
  Future<bool>specialProductRemar(String remarks) async {

    popularproductremarkinprogress=true;
    update();
    final response=await NetworkCall.getRequest(url:'/ListProductByRemark/special');
    if(response.Success){
      specialProdcut=ProductByRemarkModel.fromJson(response.returnData);
      update();
      return true;
    }else{
      update();
      return false;
    }
  }
}