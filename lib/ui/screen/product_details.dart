import 'package:craftapps/ui/utils/style.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/product_details/productcarsuel.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        leading: BackButton(
          color: Colors.grey,
        ),
      ),
      body: Column(
        children: [
          ProductCarasuel(),

          Row(
            children: [
              Column(
                children: [
                  Text("Addinas caruel show 5268 new Brand new ",style: titleTextStyle.copyWith(
                    fontSize: 18,
                  ),),

                  Row(
                    children: [

                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          Text("4.5",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,

                          ),),
                          Text("Reviews",style: TextStyle(fontSize: 12,color: Colors.blue),),

                        ],
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(5),

                        ),
                        child: Padding(padding: EdgeInsets.all(4),
                          child: Icon(Icons.favorite,size: 12,color: Colors.white,),
                        ),
                      )
                    ],
                  ),

                ],
              )
            ],
          )


        ],
      ),
    );
  }
}
