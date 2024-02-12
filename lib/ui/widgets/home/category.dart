import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screen/product_list_screen.dart';
import '../../utils/app_colors.dart';
class CategortyCard extends StatelessWidget {
  final String title,imageurl;
  const CategortyCard({
    super.key, required this.title, required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              Get.to(ProductList());
            },
            child: Container(
              decoration: BoxDecoration(
                color: primarycolor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(padding: EdgeInsets.all(16),
                child:Image.network(imageurl),

              ),
            ),
          ),
          Text(title,textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.w600,color: primarycolor,letterSpacing: 0.6,
          ),),
        ],
      ),
    );
  }
}