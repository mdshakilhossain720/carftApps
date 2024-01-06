import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
class buttonresuable extends StatelessWidget {
  final String title;
  final VoidCallback ontab;
  const buttonresuable({
    super.key, required this.title, required this.ontab,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: ontab,style: ElevatedButton.styleFrom(
        backgroundColor: primarycolor,
      ), child: Text(title,style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.w500,letterSpacing: 0.6,),)),
    );
  }
}