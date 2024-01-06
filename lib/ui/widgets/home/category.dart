import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
class CategortyCard extends StatelessWidget {
  final String title;
  const CategortyCard({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primarycolor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(padding: EdgeInsets.all(16),
              child: Icon(Icons.computer,size: 28,color: primarycolor,),

            ),
          ),
          Text(title,textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.w600,color: primarycolor,letterSpacing: 0.6,
          ),),
        ],
      ),
    );
  }
}