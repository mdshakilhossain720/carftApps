import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
class ProductCarasuel extends StatefulWidget {
  const ProductCarasuel({super.key});

  @override
  State<ProductCarasuel> createState() => _ProductCarasuelState();
}

class _ProductCarasuelState extends State<ProductCarasuel> {
  ValueNotifier<int> carouselindex=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index,_){
                carouselindex.value=index;
              }

          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),

        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ValueListenableBuilder(
              valueListenable: carouselindex,
              builder: ( context, currentvalue, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0;i<5;i++)
                      Padding(padding: EdgeInsets.all(2),
                        child: Container(

                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: currentvalue == i ? primarycolor : Colors.white,
                           // borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: greycolor.withOpacity(0.5),),


                          ),
                        ),

                      )
                  ],
                );
              },

            ),
          ),
        ),
      ],
    );
  }
}
