import 'package:craftapps/ui/screen/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screen/product_list_screen.dart';
import '../../utils/app_colors.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 145,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails()));
        },
        child: Card(
          elevation: 2,
          child: Column(
            children: [
              Image.asset("asserts/image/shoes.jpg",width: 120,height: 70,fit: BoxFit.cover,),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Nike cluse of shoes a363278",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 13,
                    ),),
                    Row(
                      children: [
                        Text("\$340",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:primarycolor,
                          fontSize: 11,
                        ),),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text("3.5",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,

                            ),),

                          ],
                        ),
                        SizedBox(width: 10,),
                        Container(

                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(5),

                          ),
                          child: Padding(padding: EdgeInsets.all(4),
                            child: Icon(Icons.favorite,size: 6,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}