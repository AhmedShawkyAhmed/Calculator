import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numButton(String title, VoidCallback onPressed,
      double height, Color background) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.209,
        height: height,
        decoration: BoxDecoration(
          color: background,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: black,
          child: Row(
            children: [
              Column(
                children: [
                  numButton('C', () {},  80, darkBlue),
                  numButton('7', () {},  80, black),
                  numButton('4', () {},  80, black),
                  numButton('1', () {},  80, black),
                  numButton('%', () {},  80, black),
                ],
              ),
              Column(
                children: [
                  numButton('÷', () {},  80, darkBlue),
                  numButton('8', () {},  80, black),
                  numButton('5', () {},  80, black),
                  numButton('2', () {},  80, black),
                  numButton('0', () {},  80, black),
                ],
              ),
              Column(
                children: [
                  numButton('x', () {},  80, darkBlue),
                  numButton('9', () {},  80, black),
                  numButton('6', () {},  80, black),
                  numButton('3', () {},  80, black),
                  numButton('.', () {},  80, black),
                ],
              ),
              Column(
                children: [
                  numButton('⌫', () {},  80, darkBlue),
                  numButton('-', () {}, 80, darkBlue),
                  numButton('+', () {}, 80, darkBlue),
                  numButton('=', () {},  160, darkBlue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
