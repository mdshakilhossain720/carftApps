import 'package:craftapps/state_managemnt/categortycontroller.dart';
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
        leading: IconButton(
            onPressed: () {
              Get.to(HomePage());
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: GetBuilder<categroityCOntroller>(builder: (categotiscontroller) {
        if(categotiscontroller.getinprogress){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return RefreshIndicator(
          onRefresh: ()async{
            Get.find<categroityCOntroller>().categoity();
          },
          child: GridView.builder(
              itemCount: categotiscontroller.categories.data!.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) {
                final categority = categotiscontroller.categories.data![index];
                return CategortyCard(
                  title: categority.categoryName.toString(),
                  imageurl: categority.categoryImg.toString(),
                );
              }),
        );
      }),
    );
  }
}
