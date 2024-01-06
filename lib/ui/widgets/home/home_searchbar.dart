import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
class homesearchbar extends StatelessWidget {
  const homesearchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: softGrey.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.search),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}