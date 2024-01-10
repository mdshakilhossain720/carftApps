import 'package:craftapps/ui/widgets/home/produccard.dart';
import 'package:flutter/material.dart';
class WilishScreen extends StatelessWidget {
  const WilishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wilishlist"),
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: GridView.builder(
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), itemBuilder: (context,index){
        return ProductCard();
      }),
    );
  }
}
