import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
class carsuelsliderresuable extends StatefulWidget {

  const carsuelsliderresuable({
    super.key,

  });

  @override
  State<carsuelsliderresuable> createState() => _carsuelsliderresuableState();
}

class _carsuelsliderresuableState extends State<carsuelsliderresuable> {
  ValueNotifier<int> carouselindex=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 3,),
        ValueListenableBuilder(
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
                        color: currentvalue == i ? primarycolor : null,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: greycolor.withOpacity(0.5),),


                      ),
                    ),

                  )
              ],
            );
          },

        ),
      ],
    );
  }
}