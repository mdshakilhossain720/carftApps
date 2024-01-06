import 'package:craftapps/ui/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home/category.dart';
class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        leading: IconButton(onPressed: (){
          Get.to(HomePage());
        }, icon: Icon(Icons.arrow_back_ios)),
      ),

      body: GridView.builder(
          itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount:4),
          itemBuilder: (context,index){
           return CategortyCard( title: 'dumy',);
          }),
    );
  }
}
