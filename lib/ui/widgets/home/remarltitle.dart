import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/style.dart';
class Remarktitlewidgets extends StatelessWidget {
  final String remarkName;
  final VoidCallback ontab;
  const Remarktitlewidgets({
    super.key, required this.remarkName, required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(remarkName,style: titleTextStyle.copyWith(
          fontSize: 18,fontWeight: FontWeight.w100,
        ),),
        TextButton(onPressed:ontab,child: Text("See all",style: TextStyle(color: primarycolor),)),
      ],
    );
  }
}