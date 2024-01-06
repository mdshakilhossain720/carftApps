import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
class Appbarbutton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback ontab;
  const Appbarbutton({
    super.key, required this.iconData, required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      borderRadius: BorderRadius.circular(16),
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        radius: 14,
        child: Icon(iconData,size:16,color: softGrey,),
      ),
    );
  }
}