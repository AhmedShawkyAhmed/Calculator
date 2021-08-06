import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget numButton(
    String title, VoidCallback onPressed, double height,Color font, Color background) {
  return Padding(
    padding: const EdgeInsets.only(top: 5,bottom: 6,right: 8,left: 8),
    child: Container(
      width: 20.w,
      height: height,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 6.w,
            color: font,
          ),
        ),
      ),
    ),
  );
}