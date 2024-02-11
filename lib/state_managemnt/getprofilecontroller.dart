
import 'dart:html';

import 'package:craftapps/data/services/network_services.dart';
import 'package:get/get.dart';

class profileCOntroller extends GetxController{
  bool _getprofileInprogress=false;
  bool get  getprofileInprogress=>_getprofileInprogress;
  Future<bool>getProfileData() async {
    _getprofileInprogress=true;
    update();
    final response=await NetworkCall.getRequest(url:'/getprofile');
    _getprofileInprogress=false;
    if(response.Success){
      update();
      return true;
    }else{
      update();
      return false;
    }

  }
}