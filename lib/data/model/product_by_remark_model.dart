import 'brand_model.dart';
import 'categorty.dart';
import 'product.dart';

class ProductByRemarkModel {
  String? msg;
  List<Data>? data;

  ProductByRemarkModel({this.msg, this.data});

  ProductByRemarkModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}






