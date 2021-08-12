import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Scientific extends StatefulWidget {
  const Scientific({Key? key}) : super(key: key);

  @override
  _ScientificState createState() => _ScientificState();
}

class _ScientificState extends State<Scientific> {
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 100.w,
                color: black,
                child: TextField(
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
                  child: TextField(
                    controller: result,
                    maxLines: 1,
                    style: TextStyle(
                      color: grey,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.right,
                    readOnly: true,
                    keyboardType: TextInputType.none,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    numButton('Sin', () {}, 5.5.h, grey, darkGrey),
                    numButton('Cosh', () {}, 5.5.h, grey, darkGrey),
                    numButton('Red', () {}, 5.5.h, grey, darkGrey),
                    numButton('nPr', () {}, 5.5.h, grey, darkGrey),
                    numButton('2^x', () {}, 5.5.h, grey, darkGrey),
                    numButton('( - )', () {}, 5.5.h, grey, darkGrey),
                    numButton('C', () {}, 5.5.h, yellow, darkGrey),
                    numButton('7', () {}, 5.5.h, white, darkGrey),
                    numButton('4', () {}, 5.5.h, white, darkGrey),
                    numButton('1', () {}, 5.5.h, white, darkGrey),
                    numButton('+/-', () {}, 5.5.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('Cos', () {}, 5.5.h, grey, darkGrey),
                    numButton('Tanh', () {}, 5.5.h, grey, darkGrey),
                    numButton('Deg', () {}, 5.5.h, grey, darkGrey),
                    numButton('nCr', () {}, 5.5.h, grey, darkGrey),
                    numButton('n^x', () {}, 5.5.h, grey, darkGrey),
                    numButton('1/x', () {}, 5.5.h, grey, darkGrey),
                    numButton('÷', () {}, 5.5.h, yellow, darkGrey),
                    numButton('8', () {}, 5.5.h, white, darkGrey),
                    numButton('5', () {}, 5.5.h, white, darkGrey),
                    numButton('2', () {}, 5.5.h, white, darkGrey),
                    numButton('0', () {}, 5.5.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('Tan', () {}, 5.5.h, grey, darkGrey),
                    numButton('mod', () {}, 5.5.h, grey, darkGrey),
                    numButton('Nlogx', () {}, 5.5.h, grey, darkGrey),
                    numButton('e', () {}, 5.5.h, grey, darkGrey),
                    numButton('2√x', () {}, 5.5.h, grey, darkGrey),
                    numButton('n!', () {}, 5.5.h, grey, darkGrey),
                    numButton('x', () {}, 5.5.h, yellow, darkGrey),
                    numButton('9', () {}, 5.5.h, white, darkGrey),
                    numButton('6', () {}, 5.5.h, white, darkGrey),
                    numButton('3', () {}, 5.5.h, white, darkGrey),
                    numButton('.', () {}, 5.5.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('Sinh', () {}, 5.5.h, grey, darkGrey),
                    numButton('log', () {}, 5.5.h, grey, darkGrey),
                    numButton('*10^x', () {}, 5.5.h, grey, darkGrey),
                    numButton('e^x', () {}, 5.5.h, grey, darkGrey),
                    numButton('n√x', () {}, 5.5.h, grey, darkGrey),
                    numButton('µ', () {}, 5.5.h, grey, darkGrey),
                    numButton('⌫', () {}, 5.5.h, yellow, darkGrey),
                    numButton('-', () {}, 5.5.h, yellow, darkGrey),
                    numButton('+', () {}, 5.5.h, yellow, darkGrey),
                    numButton('=', () {}, 13.h, black, yellow),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
