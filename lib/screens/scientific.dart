import 'package:calculator/colors.dart';
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
  TextEditingController total = TextEditingController();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
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
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,),
              child: Container(
                width: 100.w,
                height: 8.h,
                color: black,
                child: TextFormField(
                  controller: controller,
                  maxLines: 1,
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.none,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,bottom: 3,top: 2),
              child: Container(
                width: 100.w,
                color: black,
                child: Text(
                  'Total',
                  style: TextStyle(
                    color: grey,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    numButton('Sin', () {}, 11.w, grey, darkGrey),
                    numButton('Cosh', () {}, 11.w, grey, darkGrey),
                    numButton('Red', () {}, 11.w, grey, darkGrey),
                    numButton('nPr', () {}, 11.w, grey, darkGrey),
                    numButton('2^x', () {}, 11.w, grey, darkGrey),
                    numButton('( - )', () {}, 11.w, grey, darkGrey),
                    numButton('C', () {}, 11.w, yellow, darkGrey),
                    numButton('7', () {}, 11.w, white, darkGrey),
                    numButton('4', () {}, 11.w, white, darkGrey),
                    numButton('1', () {}, 11.w, white, darkGrey),
                    numButton('+/-', () {}, 11.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('Cos', () {}, 11.w, grey, darkGrey),
                    numButton('Tanh', () {}, 11.w, grey, darkGrey),
                    numButton('Deg', () {}, 11.w, grey, darkGrey),
                    numButton('nCr', () {}, 11.w, grey, darkGrey),
                    numButton('n^x', () {}, 11.w, grey, darkGrey),
                    numButton('1/x', () {}, 11.w, grey, darkGrey),
                    numButton('÷', () {}, 11.w, yellow, darkGrey),
                    numButton('8', () {}, 11.w, white, darkGrey),
                    numButton('5', () {}, 11.w, white, darkGrey),
                    numButton('2', () {}, 11.w, white, darkGrey),
                    numButton('0', () {}, 11.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('Tan', () {}, 11.w, grey, darkGrey),
                    numButton('mod', () {}, 11.w, grey, darkGrey),
                    numButton('Nlogx', () {}, 11.w, grey, darkGrey),
                    numButton('e', () {}, 11.w, grey, darkGrey),
                    numButton('2√x', () {}, 11.w, grey, darkGrey),
                    numButton('n!', () {}, 11.w, grey, darkGrey),
                    numButton('x', () {}, 11.w, yellow, darkGrey),
                    numButton('9', () {}, 11.w, white, darkGrey),
                    numButton('6', () {}, 11.w, white, darkGrey),
                    numButton('3', () {}, 11.w, white, darkGrey),
                    numButton('.', () {}, 11.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('Sinh', () {}, 11.w, grey, darkGrey),
                    numButton('log', () {}, 11.w, grey, darkGrey),
                    numButton('*10^x', () {}, 11.w, grey, darkGrey),
                    numButton('e^x', () {}, 11.w, grey, darkGrey),
                    numButton('n√x', () {}, 11.w, grey, darkGrey),
                    numButton('µ', () {}, 11.w, grey, darkGrey),
                    numButton('⌫', () {}, 11.w, yellow, darkGrey),
                    numButton('-', () {}, 11.w, yellow, darkGrey),
                    numButton('+', () {}, 11.w, yellow, darkGrey),
                    numButton('=', () {}, 25.w, black, yellow),
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
