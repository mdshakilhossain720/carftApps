import 'package:craftapps/ui/screen/product_details.dart';
import 'package:flutter/material.dart';
import '../../../data/model/product.dart';
import '../../utils/app_colors.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.product,
  });
  final Data product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 145,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetails(productDetails: product.id!)));
        },
        child: Card(
          elevation: 2,
          child: Column(
            children: [
              Image.asset(product.image??'',width: 120,height: 70,fit: BoxFit.scaleDown,),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(product.title??'Unknow',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 13,
                    ),),
                    Row(
                      children: [
                        Text("\$${product.price}",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:primarycolor,
                          fontSize: 11,
                        ),),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text('${product.star}',style: TextStyle(
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