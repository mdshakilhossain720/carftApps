import 'dart:convert';
import 'dart:developer';

import 'package:craftapps/data/model/response_model.dart';
import 'package:craftapps/data/utilits/urls.dart';
import 'package:craftapps/state_managemnt/user_login.dart';
import 'package:http/http.dart';

class NetworkCall {
  NetworkCall._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
      final response = await get(Uri.parse(Urls.baseurl + url),headers: {
        "Content-type": "application/json",
       // 'token':UserLoginController.token.toString(),
      });

      log(response.body);
      if (response== 200) {
        return ResponseModel(
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body),
            Success: true);
      } else {
        return ResponseModel(
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body),
            Success: false);
      }
    } catch (e) {
      print(e.toString());
      return ResponseModel(
          statusCode: -1, returnData: e.toString(), Success: false);
    }
  }
}
