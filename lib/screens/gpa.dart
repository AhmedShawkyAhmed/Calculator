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
  double gpa = 0;
  String grade = 'F';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'GPA Calculator',
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
        child: Column(
          children: [
            Text(
              'Your GPA = ${gpa.toString()}',
              style: TextStyle(color: white,fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: darkGrey,
        ),
        backgroundColor: yellow,
      ),
    );
  }
}
