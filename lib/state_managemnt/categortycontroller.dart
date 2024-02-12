
import 'package:craftapps/data/model/catregorityModel.dart';
import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class categroityCOntroller extends GetxController{
  CategorityModel _categorityModel=CategorityModel();
   bool _getinprogress=false;
   bool get getinprogress=>_getinprogress;
   CategorityModel get categories=>_categorityModel;
   
   Future<bool>categoity() async {
     _getinprogress=true;
     update();
     final response=await NetworkCall.getRequest(url:'/CategoryList');
     _getinprogress=false;
     if(response.statusCode==200){
       _categorityModel=CategorityModel.fromJson(response.returnData);
       update();
       return true;
     }else{
       update();
       return false;
     }
   }
}