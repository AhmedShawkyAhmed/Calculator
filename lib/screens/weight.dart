import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  void actions(buttonText) {
    if (buttonText == '0') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '1') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '2') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '3') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '4') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '5') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '6') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '7') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '8') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '9') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == '.') {
      if (number == 0) {
        if (controller.text.isEmpty) {
          setState(() {
            controller.text = '0' + buttonText.toString();
            number = 1;
          });
        } else {
          setState(() {
            controller.text = controller.text + buttonText.toString();
            number = 1;
          });
        }
      }
    }
    if (buttonText == '00') {
      setState(() {
        controller.text = controller.text + buttonText.toString();
      });
    }
    if (buttonText == 'C') {
      setState(() {
        controller.text = '';
        result.text = '';
        number = 0;
      });
    }
    if (buttonText == '⌫') {
      setState(() {
        number = controller.text.length;
        controller.text = controller.text.substring(0, number - 1);
        if (controller.text.isEmpty) {
          setState(() {
            result.text = '';
          });
        }
      });
    }
    if (controller.text.isNotEmpty) {
      weight(list1!, list2!);
    }
  }

  void weight(int from, int to) {
    if (controller.text.isNotEmpty) {
      temp = double.parse(controller.text);
      assert(temp is double);
      if (from == 1) {
        switch (to) {
          case 1:
            result.text = controller.text;
            break;
          case 2:
            result.text = (temp / 10).toString();
            break;
          case 3:
            result.text = (temp / 1000).toString();
            break;
          case 4:
            result.text = (temp / 1000000).toString();
            break;
          case 5:
            result.text = (temp * 0.00003527).toString();
            break;
          case 6:
            result.text = (temp / 453592.37).toString();
            break;
          case 7:
            result.text = (temp / 6350300).toString();
            break;
        }
      }
      if (from == 2) {
        switch (to) {
          case 1:
            result.text = (temp * 10).toString();
            break;
          case 2:
            result.text = controller.text;
            break;
          case 3:
            result.text = (temp / 100).toString();
            break;
          case 4:
            result.text = (temp / 100000).toString();
            break;
          case 5:
            result.text = (temp * 0.00035274).toString();
            break;
          case 6:
            result.text = (temp / 45359.237).toString();
            break;
          case 7:
            result.text = (temp / 635029.317).toString();
            break;
        }
      }
      if (from == 3) {
        switch (to) {
          case 1:
            result.text = (temp * 1000).toString();
            break;
          case 2:
            result.text = (temp * 100).toString();
            break;
          case 3:
            result.text = controller.text;
            break;
          case 4:
            result.text = (temp / 1000).toString();
            break;
          case 5:
            result.text = (temp * 0.03527396).toString();
            break;
          case 6:
            result.text = (temp * 0.00220462).toString();
            break;
          case 7:
            result.text = (temp * 0.00015747).toString();
            break;
        }
      }
      if (from == 4) {
        switch (to) {
          case 1:
            result.text = (temp * 1000000).toString();
            break;
          case 2:
            result.text = (temp * 100000).toString();
            break;
          case 3:
            result.text = (temp * 1000).toString();
            break;
          case 4:
            result.text = controller.text;
            break;
          case 5:
            result.text = (temp * 35.2739619).toString();
            break;
          case 6:
            result.text = (temp * 2.20462262).toString();
            break;
          case 7:
            result.text = (temp * 0.15747304).toString();
            break;
        }
      }
      if (from == 5) {
        switch (to) {
          case 1:
            result.text = (temp * 28349.5231).toString();
            break;
          case 2:
            result.text = (temp * 2834.95231).toString();
            break;
          case 3:
            result.text = (temp * 28.3495231).toString();
            break;
          case 4:
            result.text = (temp * 0.02834952).toString();
            break;
          case 5:
            result.text = controller.text;
            break;
          case 6:
            result.text = (temp / 16).toString();
            break;
          case 7:
            result.text = (temp / 224).toString();
            break;
        }
      }
      if (from == 6) {
        switch (to) {
          case 1:
            result.text = (temp * 453592.37).toString();
            break;
          case 2:
            result.text = (temp * 45359.237).toString();
            break;
          case 3:
            result.text = (temp * 453.59237).toString();
            break;
          case 4:
            result.text = (temp * 0.45359237).toString();
            break;
          case 5:
            result.text = (temp * 16).toString();
            break;
          case 6:
            result.text = controller.text;
            break;
          case 7:
            result.text = (temp / 14).toString();
            break;
        }
      }
      if (from == 7) {
        switch (to) {
          case 1:
            result.text = (temp * 6350300).toString();
            break;
          case 2:
            result.text = (temp * 635029.317).toString();
            break;
          case 3:
            result.text = (temp * 6350.29318).toString();
            break;
          case 4:
            result.text = (temp * 6.35029318).toString();
            break;
          case 5:
            result.text = (temp * 224).toString();
            break;
          case 6:
            result.text = (temp * 14).toString();
            break;
          case 7:
            result.text = controller.text;
            break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'Weight',
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
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
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: DropdownButton(
                hint: Text(
                  'Milligrams',
                  style: TextStyle(
                    color: grey,
                    fontSize: 25,
                  ),
                ),
                value: list1,
                style: TextStyle(color: grey, fontSize: 25),
                dropdownColor: black,
                items: const [
                  DropdownMenuItem(
                    child: Text('Milligrams'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Centigrams'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Grams'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Kilograms'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Ounces'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('Pounds'),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text('Stone'),
                    value: 7,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list1 = value as int;
                  });
                  weight(list1!, list2!);
                },
              ),
            ),
            Container(
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
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: DropdownButton(
                hint: Text(
                  'Milligrams',
                  style: TextStyle(
                    color: grey,
                    fontSize: 25,
                  ),
                ),
                value: list2,
                style: TextStyle(color: grey, fontSize: 25),
                dropdownColor: black,
                items: const [
                  DropdownMenuItem(
                    child: Text('Milligrams'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Centigrams'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Grams'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Kilograms'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Ounces'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('Pounds'),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text('Stone'),
                    value: 7,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list2 = value as int;
                  });
                  weight(list1!, list2!);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    numButton('7', () {
                      actions('7');
                    }, 10.h, white, darkGrey),
                    numButton('4', () {
                      actions('4');
                    }, 10.h, white, darkGrey),
                    numButton('1', () {
                      actions('1');
                    }, 10.h, white, darkGrey),
                    numButton('.', () {
                      actions('.');
                    }, 10.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('8', () {
                      actions('8');
                    }, 10.h, white, darkGrey),
                    numButton('5', () {
                      actions('5');
                    }, 10.h, white, darkGrey),
                    numButton('2', () {
                      actions('2');
                    }, 10.h, white, darkGrey),
                    numButton('0', () {
                      actions('0');
                    }, 10.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('9', () {
                      actions('9');
                    }, 10.h, white, darkGrey),
                    numButton('6', () {
                      actions('6');
                    }, 10.h, white, darkGrey),
                    numButton('3', () {
                      actions('3');
                    }, 10.h, white, darkGrey),
                    numButton('00', () {
                      actions('00');
                    }, 10.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('C', () {
                      actions('C');
                    }, 22.h, yellow, darkGrey),
                    numButton('⌫', () {
                      actions('⌫');
                    }, 22.h, yellow, darkGrey),
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
