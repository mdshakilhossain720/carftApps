import 'package:craftapps/state_managemnt/auth_controller.dart';
import 'package:craftapps/state_managemnt/product_controller.dart';
import 'package:craftapps/state_managemnt/wish_listcontroller.dart';
import 'package:craftapps/ui/utils/style.dart';
import 'package:craftapps/ui/widgets/button_resuable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widgets/product_details/productcarsuel.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.productDetails});
  final int productDetails;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Color>color=[
    Color(0xff000000),
    Color(0xfe183677),
    Color(0xffcb16b3),
    Color(0xffef2828),
    Color(0xff851f1f),

  ];
  List<String>sizes= const[
    "xx",
    "xxl",
    "xl",
    "xxxl",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<ProductController>().getProductDetails(widget.productDetails);
  }

   String selectsize ='xx';
  Color selectcolor=Color(0xff000000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        leading: BackButton(
          color: Colors.grey,
        ),
      ),
      body: GetBuilder<ProductController>(

        builder: (productController) {
          if(productController.productDetailsinprogress){
            return Center(child: CircularProgressIndicator());
          }
          final productDetails=productController.productDetailsModel.data!.first;
          sizes=getSize(productDetails.size??'');
          color=getcolor(productDetails.color??'');
          return SingleChildScrollView(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCarasuel(Images: [
                  productDetails.img1??'',
                  productDetails.img2??'',
                  productDetails.img3 ??'',
                  productDetails.img4 ??'',
                ]),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(productDetails.product!.title ??'Know',style: titleTextStyle.copyWith(
                                fontSize: 18,
                              ),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: [
                                      Icon(Icons.star,color: Colors.amber,),
                                      Text('${productDetails.product!.star}',style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,

                                      ),),
                                      Text("Reviews",style: TextStyle(fontSize: 12,color: Colors.blue),),

                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  GetBuilder<wishListController>(


                                    builder: (wishlistController) {
                                      if(wishlistController.wishlistinprogres){
                                        return Center(child: CircularProgressIndicator());
                                      }
                                      return InkWell(
                                        onTap: (){
                                          Get.find<wishListController>().getwilishList(productDetails.productId);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: primarycolor,
                                            borderRadius: BorderRadius.circular(5),

                                          ),
                                          child: Padding(padding: EdgeInsets.all(4),
                                            child: Icon(Icons.favorite,size: 12,color: Colors.white,),
                                          ),
                                        ),
                                      );
                                    }
                                  )
                                ],
                              ),

                            ],
                          )
                        ],
                      ),

                      Text("Color",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                      Row(
                        children: color.map((color){
                          return Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: InkWell(
                              onTap: (){
                                selectcolor=color;
                                if(mounted){
                                  setState(() {

                                  });
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: color,
                                radius: 15,
                                child: Visibility(
                                    visible: color==selectcolor,
                                    child: Icon(Icons.check,color: Colors.white,)),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Text("Color",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                      Row(
                        children: sizes.map((size){
                          return Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: InkWell(
                              onTap: (){
                                selectsize=size;
                                if(mounted){
                                  setState(() {

                                  });
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: greycolor,
                                  ),
                                  color: size ==selectsize?primarycolor:null,
                                ),

                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(size,style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: size==selectsize? Colors.white:null,
                                    ),)),
                                // child: Visibility(
                                //     visible: size==selectsize,
                                //     child: Icon(Icons.check,color: Colors.white,)),
                              ),
                            ),
                          );
                        }).toList(),
                      ),

                      Text("Described",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 20),),
                      SizedBox(height: 10,),
                      Text(productDetails.product!.shortDes??'',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: greycolor,
                      ),),
                    ],
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: primarycolor.withOpacity(0.4),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("prices"),
                          Text('\$${productDetails.product!.price}'),

                        ],
                      ),
                      SizedBox(
                        width: 120,
                        child: buttonresuable(title: "add to cart", ontab: (){
                          Get.find<AuthController>().
                        }),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          );
        }
      ),
    );
  }

  List<String>getSize(String size){
    return size.split(',');
  }

  List<Color> getcolor(String color){
    List<Color>hexcolor=[];
    List<String>colors=color.split(',');
    for(String c in colors){
      c=c.replaceAll('#','0xFF');
      hexcolor.add(Color(int.parse(c)));
    }
    return hexcolor;
  }
}
