import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftapps/ui/utils/app_colors.dart';
import 'package:craftapps/ui/utils/style.dart';
import 'package:flutter/material.dart';

import '../widgets/home/appbarbutton.dart';
import '../widgets/home/category.dart';
import '../widgets/home/home_searchbar.dart';
import '../widgets/home/homecaruselwidgets.dart';
import '../widgets/home/remarltitle.dart';
import '../widgets/home/produccard.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  CarouselController carouselController=CarouselController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("asserts/image/logonav.png"),
            Spacer(),
            Appbarbutton(iconData: Icons.person, ontab: () {},),
            Appbarbutton(iconData: Icons.call, ontab: () {},),
            Appbarbutton(iconData: Icons.notification_add, ontab: () {},),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              homesearchbar(),
              carsuelsliderresuable(),
              SizedBox(height: 8,),
          
              Remarktitlewidgets(remarkName: 'Category', ontab: () {},),
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    CategortyCard(title: 'Computer',),
                    
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Remarktitlewidgets(remarkName: 'PoPular ', ontab: () {},),
              SizedBox(height: 12,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),


                  ],
                ),
              ),
              Remarktitlewidgets(remarkName: 'New ', ontab: () {},),
              SizedBox(height: 12,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),


                  ],
                ),
              ),
              SizedBox(height: 12,),
              Remarktitlewidgets(remarkName: 'Special ', ontab: () {},),
              SizedBox(height: 12,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),


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












