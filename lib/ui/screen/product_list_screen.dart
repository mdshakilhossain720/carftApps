import 'package:craftapps/ui/widgets/home/produccard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_managemnt/product_controller.dart';
class ProductList extends StatefulWidget {
  final int categoryid;
  const ProductList({super.key, required this.categoryid});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    Get.find<ProductController>().getProductByCategority(widget.categoryid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product"),
      leading: BackButton(
        color: Colors.grey,
      ),
      ),

      body: GetBuilder<ProductController>(

        builder: (productcontroller) {
          if(productcontroller.getprogreesindicotor){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.builder(
            itemCount: productcontroller.productByRemarkModel.data!.length ?? 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.75,
                  crossAxisCount: 3), itemBuilder: (context,index){
                return ProductCard(product: productcontroller.productByRemarkModel.data![index]);
          });
        }
      ),
    );
  }
}
