import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double height = 0, weight = 0, age = 0, bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'Scientific',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: darkGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: 15,
                    child: Slider(
                      activeColor: yellow,
                      inactiveColor: yellow,
                      value: height,
                      min: 0,
                      max: 300,
                      divisions: 300,
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    height.toStringAsFixed(0),
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: yellow,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Text(
                    'cm',
                    style: TextStyle(
                      color: yellow,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
