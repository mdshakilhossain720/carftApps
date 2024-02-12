
import 'package:craftapps/data/model/product_deltalismodel.dart';
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

import '../data/model/product_by_remark_model.dart';

class ProductController extends GetxController{
  bool _getprogressindicator=false;
  bool _productDetailsinprogress=false;
  bool get getprogreesindicotor=>_getprogressindicator;
  bool get productDetailsinprogress=>_productDetailsinprogress;

  ProductByRemarkModel productByRemarkModel=ProductByRemarkModel();
  ProductDetailsModel _productDetailsModel=ProductDetailsModel();
    ProductByRemarkModel get productmodel=>productByRemarkModel;
    ProductDetailsModel get productDetailsModel=>_productDetailsModel;
  Future<bool> getProductByCategority(int CategorityId) async {
    _getprogressindicator=true;
    update();
    final response= await NetworkCall.getRequest(url: '/ListProductByCategory/${CategorityId}');
    _getprogressindicator=false;
    if(response.Success){
    productByRemarkModel=ProductByRemarkModel.fromJson(response.returnData);
      update();
      return true;
    }else{
      update();
      return false;
    }
    
  }

  Future<bool> getProductDetails(int productId) async {
    _productDetailsinprogress=true;
    update();
    final response= await NetworkCall.getRequest(url: '/ListProductByCategory/${productId}');
    _productDetailsinprogress=false;
    if(response.Success){
      _productDetailsModel=ProductDetailsModel.fromJson(response.returnData);
      update();
      return true;
    }else{
      update();
      return false;
    }

  }
}