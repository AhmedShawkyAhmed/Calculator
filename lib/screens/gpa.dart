import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GPA extends StatefulWidget {
  const GPA({Key? key}) : super(key: key);

  @override
  _GPAState createState() => _GPAState();
}

class _GPAState extends State<GPA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'GPA',
          style: TextStyle(
            fontSize: 25,
            color: white,
          ),
        ),
        backgroundColor: black,
      ),
      drawer: calculatorDrawer(context),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: black,
      ),
    );
  }
}
