import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
class customTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final TextInputType? textInputType;
  final Function (String?)validation;
  const customTextfield({
    super.key, required this.controller, required this.validation, required this.hintext, this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: textInputType,
        validator: (value){
          validation(value);
          return null;
        },
        controller: TextEditingController(),
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(
            color: softGrey,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: primarycolor,width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primarycolor,width: 2),
          ),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primarycolor,width: 2),
          ),

        ),
      ),
    );
  }
}