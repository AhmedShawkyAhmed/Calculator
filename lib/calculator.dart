import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numButton(
      String title, VoidCallback onPressed, double height, Color background) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.209,
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
              fontSize: 35,
              color: white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: height > width
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: width,
                          height: 155,
                          color: Colors.green,
                          child: TextFormField(
                              style: TextStyle(
                                color: white,
                              ),
                            keyboardType: TextInputType.none,
                            ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            numButton('mc', () {}, 80, darkBlue),
                            numButton('C', () {}, 80, darkBlue),
                            numButton('7', () {}, 80, darkGrey),
                            numButton('4', () {}, 80, darkGrey),
                            numButton('1', () {}, 80, darkGrey),
                            numButton('%', () {}, 80, darkGrey),
                          ],
                        ),
                        Column(
                          children: [
                            numButton('m+', () {}, 80, darkBlue),
                            numButton('÷', () {}, 80, darkBlue),
                            numButton('8', () {}, 80, darkGrey),
                            numButton('5', () {}, 80, darkGrey),
                            numButton('2', () {}, 80, darkGrey),
                            numButton('0', () {}, 80, darkGrey),
                          ],
                        ),
                        Column(
                          children: [
                            numButton('m-', () {}, 80, darkBlue),
                            numButton('x', () {}, 80, darkBlue),
                            numButton('9', () {}, 80, darkGrey),
                            numButton('6', () {}, 80, darkGrey),
                            numButton('3', () {}, 80, darkGrey),
                            numButton('.', () {}, 80, darkGrey),
                          ],
                        ),
                        Column(
                          children: [
                            numButton('mr', () {}, 80, darkBlue),
                            numButton('⌫', () {}, 80, darkBlue),
                            numButton('-', () {}, 80, darkBlue),
                            numButton('+', () {}, 80, darkBlue),
                            numButton('=', () {}, 176, darkBlue),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Container(
                width: double.infinity,
                height: double.infinity,
                color: black,
                child: Row(
                  children: const [
                    /*Column(
                      children: [
                        numButton('C', () {}, 80, darkBlue),
                        numButton('7', () {}, 80, darkGrey),
                        numButton('4', () {}, 80, darkGrey),
                        numButton('1', () {}, 80, darkGrey),
                        numButton('%', () {}, 80, darkGrey),
                      ],
                    ),
                    Column(
                      children: [
                        numButton('÷', () {}, 80, darkBlue),
                        numButton('8', () {}, 80, darkGrey),
                        numButton('5', () {}, 80, darkGrey),
                        numButton('2', () {}, 80, darkGrey),
                        numButton('0', () {}, 80, darkGrey),
                      ],
                    ),
                    Column(
                      children: [
                        numButton('x', () {}, 80, darkBlue),
                        numButton('9', () {}, 80, darkGrey),
                        numButton('6', () {}, 80, darkGrey),
                        numButton('3', () {}, 80, darkGrey),
                        numButton('.', () {}, 80, darkGrey),
                      ],
                    ),
                    Column(
                      children: [
                        numButton('⌫', () {}, 80, darkBlue),
                        numButton('-', () {}, 80, darkBlue),
                        numButton('+', () {}, 80, darkBlue),
                        numButton('=', () {}, 176, darkBlue),
                      ],
                    ),*/
                  ],
                ),
              ),
      ),
    );
  }
}
