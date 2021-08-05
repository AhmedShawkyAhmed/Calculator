import 'package:calculator/colors.dart';
import 'package:calculator/widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController total = TextEditingController();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          width: 100.w,
          height: 100.h,
          color: black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 100.w,
                  color: black,
                  child: TextFormField(
                    controller: controller,
                    maxLines: 1,
                    style: TextStyle(
                      color: white,
                      fontSize: 45,
                    ),
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.none,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 100.w,
                  color: black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Total',
                      style: TextStyle(
                        color: grey,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      numButton('MC', () {}, 20.w, grey, darkGrey),
                      numButton('C', () {}, 20.w, yellow, darkGrey),
                      numButton('7', () {}, 20.w, white, darkGrey),
                      numButton('4', () {}, 20.w, white, darkGrey),
                      numButton('1', () {}, 20.w, white, darkGrey),
                      numButton('%', () {}, 20.w, white, darkGrey),
                    ],
                  ),
                  Column(
                    children: [
                      numButton('M+', () {}, 20.w, grey, darkGrey),
                      numButton('÷', () {}, 20.w, yellow, darkGrey),
                      numButton('8', () {}, 20.w, white, darkGrey),
                      numButton('5', () {}, 20.w, white, darkGrey),
                      numButton('2', () {}, 20.w, white, darkGrey),
                      numButton('0', () {}, 20.w, white, darkGrey),
                    ],
                  ),
                  Column(
                    children: [
                      numButton('M-', () {}, 20.w, grey, darkGrey),
                      numButton('x', () {}, 20.w, yellow, darkGrey),
                      numButton('9', () {}, 20.w, white, darkGrey),
                      numButton('6', () {}, 20.w, white, darkGrey),
                      numButton('3', () {}, 20.w, white, darkGrey),
                      numButton('.', () {}, 20.w, white, darkGrey),
                    ],
                  ),
                  Column(
                    children: [
                      numButton('MR', () {}, 20.w, grey, darkGrey),
                      numButton('⌫', () {}, 20.w, yellow, darkGrey),
                      numButton('-', () {}, 20.w, yellow, darkGrey),
                      numButton('+', () {}, 20.w, yellow, darkGrey),
                      numButton('=', () {}, 45.w, black, yellow),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
