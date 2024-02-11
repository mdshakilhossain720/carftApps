import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../data/model/homeslider.dart';
import '../../utils/app_colors.dart';
class carsuelsliderresuable extends StatefulWidget {
  final HomeSliderModel homeSliders;

  const carsuelsliderresuable({
    super.key, required this.homeSliders,

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
          items:homeSliders.sliders!.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                            slider.image ?? '',
                        )
                      )
                    ),

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
                for(int i=0;i<homeSliders.sliders!.length;i++)
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