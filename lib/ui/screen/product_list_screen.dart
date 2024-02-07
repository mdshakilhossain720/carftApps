import 'package:craftapps/ui/widgets/home/produccard.dart';
import 'package:flutter/material.dart';
class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product"),
      leading: BackButton(
        color: Colors.grey,
      ),
      ),

      // body: GridView.builder(
      //   itemCount: 20,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       childAspectRatio: 0.75,
      //         crossAxisCount: 3), itemBuilder: (context,index){
      //       return ProductCard();
      // }),
    );
  }
}
