import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Speed extends StatefulWidget {
  const Speed({Key? key}) : super(key: key);

  @override
  _SpeedState createState() => _SpeedState();
}

class _SpeedState extends State<Speed> {
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
      speed(list1!, list2!);
    }
  }

  void speed(int from, int to) {
    if (controller.text.isNotEmpty) {
      temp = double.parse(controller.text);
      assert(temp is double);
      if (from == 1) {
        switch (to) {
          case 1:
            result.text = controller.text;
            break;
          case 2:
            result.text = (temp / 100).toString();
            break;
          case 3:
            result.text = (temp * 0.036).toString();
            break;
          case 4:
            result.text = (temp * 0.032808).toString();
            break;
          case 5:
            result.text = (temp * 0.022371).toString();
            break;
        }
      }
      if (from == 2) {
        switch (to) {
          case 1:
            result.text = (temp * 100).toString();
            break;
          case 2:
            result.text = controller.text;
            break;
          case 3:
            result.text = (temp * 3.6).toString();
            break;
          case 4:
            result.text = (temp * 3.28084).toString();
            break;
          case 5:
            result.text = (temp * 2.237136).toString();
            break;
        }
      }
      if (from == 3) {
        switch (to) {
          case 1:
            result.text = (temp * 27.7778).toString();
            break;
          case 2:
            result.text = (temp * 0.277778).toString();
            break;
          case 3:
            result.text = controller.text;
            break;
          case 4:
            result.text = (temp * 0.911344).toString();
            break;
          case 5:
            result.text = (temp * 0.621427).toString();
            break;
        }
      }
      if (from == 4) {
        switch (to) {
          case 1:
            result.text = (temp * 30.48).toString();
            break;
          case 2:
            result.text = (temp * 0.3048).toString();
            break;
          case 3:
            result.text = (temp * 1.09728).toString();
            break;
          case 4:
            result.text = controller.text;
            break;
          case 5:
            result.text = (temp * 0.681879).toString();
            break;
        }
      }
      if (from == 5) {
        switch (to) {
          case 1:
            result.text = (temp * 44.7).toString();
            break;
          case 2:
            result.text = (temp * 0.447).toString();
            break;
          case 3:
            result.text = (temp * 1.6092).toString();
            break;
          case 4:
            result.text = (temp * 1.466535).toString();
            break;
          case 5:
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
          'Speed',
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
                  'Centimeters per Second',
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
                    child: Text('Centimeters per Second'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Meters per Second'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Kilometers per Hour'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Feet per Second'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Miles per Hour'),
                    value: 5,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list1 = value as int;
                  });
                  speed(list1!, list2!);
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
                  'Centimeters per Second',
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
                    child: Text('Centimeters per Second'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Meters per Second'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Kilometers per Hour'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Feet per Second'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Miles per Hour'),
                    value: 5,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list2 = value as int;
                  });
                  speed(list1!, list2!);
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
                    }, 20.w, white, darkGrey),
                    numButton('4', () {
                      actions('4');
                    }, 20.w, white, darkGrey),
                    numButton('1', () {
                      actions('1');
                    }, 20.w, white, darkGrey),
                    numButton('.', () {
                      actions('.');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('8', () {
                      actions('8');
                    }, 20.w, white, darkGrey),
                    numButton('5', () {
                      actions('5');
                    }, 20.w, white, darkGrey),
                    numButton('2', () {
                      actions('2');
                    }, 20.w, white, darkGrey),
                    numButton('0', () {
                      actions('0');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('9', () {
                      actions('9');
                    }, 20.w, white, darkGrey),
                    numButton('6', () {
                      actions('6');
                    }, 20.w, white, darkGrey),
                    numButton('3', () {
                      actions('3');
                    }, 20.w, white, darkGrey),
                    numButton('00', () {
                      actions('00');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('C', () {
                      actions('C');
                    }, 43.5.w, yellow, darkGrey),
                    numButton('⌫', () {
                      actions('⌫');
                    }, 43.5.w, yellow, darkGrey),
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
