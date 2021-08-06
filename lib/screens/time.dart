import 'package:calculator/colors.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  TextEditingController controller = TextEditingController();
  String dropdownValue = 'Assign To';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text('Time',style: TextStyle(fontSize: 25,color: white),),
        backgroundColor: black,
      ),
      drawer: calculatorDrawer(context),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
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
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: DropdownButton<String>(
                dropdownColor: black,
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                iconSize: 24,
                style: TextStyle(color: grey,fontSize: 25),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Assign To', 'Two', 'three', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
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
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: DropdownButton<String>(
                dropdownColor: black,
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                iconSize: 24,
                style: TextStyle(color: grey,fontSize: 25),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Assign To', 'Two', 'three', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    numButton('7', () {}, 20.w, white, darkGrey),
                    numButton('4', () {}, 20.w, white, darkGrey),
                    numButton('1', () {}, 20.w, white, darkGrey),
                    numButton('.', () {}, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('8', () {}, 20.w, white, darkGrey),
                    numButton('5', () {}, 20.w, white, darkGrey),
                    numButton('2', () {}, 20.w, white, darkGrey),
                    numButton('0', () {}, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('9', () {}, 20.w, white, darkGrey),
                    numButton('6', () {}, 20.w, white, darkGrey),
                    numButton('3', () {}, 20.w, white, darkGrey),
                    numButton('00', () {}, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('C', () {}, 43.5.w, yellow, darkGrey),
                    numButton('⌫', () {}, 43.5.w, yellow, darkGrey),
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
