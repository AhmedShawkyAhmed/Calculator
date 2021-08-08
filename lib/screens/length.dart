import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Length extends StatefulWidget {
  const Length({Key? key}) : super(key: key);

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  void calculation(buttonText) {
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
      });
    }
    if (controller.text.isNotEmpty) {
      length(list1!, list2!);
    }
  }

  void length(int from, int to) {
    if (controller.text.isNotEmpty) {
      temp = double.parse(controller.text);
      assert(temp is double);
      if (from == 1) {
        switch (to) {
          case 1:
            result.text = controller.text;
            break;
          case 2:
            result.text = (temp / 1000000).toString();
            break;
          case 3:
            result.text = (temp / 10000000).toString();
            break;
          case 4:
            result.text = (temp / 1000000000).toString();
            break;
          case 5:
            result.text = (temp / 1000000000000).toString();
            break;
          case 6:
            result.text = (temp / 25400000).toString();
            break;
          case 7:
            result.text = (temp / 304800000).toString();
            break;
          case 8:
            result.text = (temp / 914400000).toString();
            break;
          case 9:
            result.text = (temp / 1609300000000).toString();
            break;
        }
      }
      if (from == 2) {
        switch (to) {
          case 1:
            result.text = (temp * 1000000).toString();
            break;
          case 2:
            result.text = controller.text;
            break;
          case 3:
            result.text = (temp / 10).toString();
            break;
          case 4:
            result.text = (temp / 1000).toString();
            break;
          case 5:
            result.text = (temp / 1000000).toString();
            break;
          case 6:
            result.text = (temp / 25.4).toString();
            break;
          case 7:
            result.text = (temp / 304.8).toString();
            break;
          case 8:
            result.text = (temp / 914.4).toString();
            break;
          case 9:
            result.text = (temp / 1609300).toString();
            break;
        }
      }
      if (from == 3) {
        switch (to) {
          case 1:
            result.text = (temp * 10000000).toString();
            break;
          case 2:
            result.text = (temp * 10).toString();
            break;
          case 3:
            result.text = controller.text;
            break;
          case 4:
            result.text = (temp / 100).toString();
            break;
          case 5:
            result.text = (temp / 100000).toString();
            break;
          case 6:
            result.text = (temp / 2.54).toString();
            break;
          case 7:
            result.text = (temp / 30.48).toString();
            break;
          case 8:
            result.text = (temp / 91.44).toString();
            break;
          case 9:
            result.text = (temp / 16093404).toString();
            break;
        }
      }
      if (from == 4) {
        switch (to) {
          case 1:
            result.text = (temp * 1000000000).toString();
            break;
          case 2:
            result.text = (temp * 1000).toString();
            break;
          case 3:
            result.text = (temp * 100).toString();
            break;
          case 4:
            result.text = controller.text;
            break;
          case 5:
            result.text = (temp / 1000).toString();
            break;
          case 6:
            result.text = (temp * 39.3700787).toString();
            break;
          case 7:
            result.text = (temp * 3.2808399).toString();
            break;
          case 8:
            result.text = (temp * 1.0936133).toString();
            break;
          case 9:
            result.text = (temp / 1609.344).toString();
            break;
        }
      }
      if (from == 5) {
        switch (to) {
          case 1:
            result.text = (temp * 1000000000000).toString();
            break;
          case 2:
            result.text = (temp * 1000000).toString();
            break;
          case 3:
            result.text = (temp * 100000).toString();
            break;
          case 4:
            result.text = (temp * 1000).toString();
            break;
          case 5:
            result.text = controller.text;
            break;
          case 6:
            result.text = (temp * 39370.0787).toString();
            break;
          case 7:
            result.text = (temp * 3280.8399).toString();
            break;
          case 8:
            result.text = (temp * 1093.6133).toString();
            break;
          case 9:
            result.text = (temp * 1.609344).toString();
            break;
        }
      }
      if (from == 6) {
        switch (to) {
          case 1:
            result.text = (temp * 25400000).toString();
            break;
          case 2:
            result.text = (temp * 25.4).toString();
            break;
          case 3:
            result.text = (temp * 2.54).toString();
            break;
          case 4:
            result.text = (temp * 0.0254).toString();
            break;
          case 5:
            result.text = (temp * 0.0000254).toString();
            break;
          case 6:
            result.text = controller.text;
            break;
          case 7:
            result.text = (temp / 12).toString();
            break;
          case 8:
            result.text = (temp / 36).toString();
            break;
          case 9:
            result.text = (temp / 63360).toString();
            break;
        }
      }
      if (from == 7) {
        switch (to) {
          case 1:
            result.text = (temp * 304800000).toString();
            break;
          case 2:
            result.text = (temp * 304.8).toString();
            break;
          case 3:
            result.text = (temp * 30.48).toString();
            break;
          case 4:
            result.text = (temp * 0.3048).toString();
            break;
          case 5:
            result.text = (temp * 0.0003048).toString();
            break;
          case 6:
            result.text = (temp * 12).toString();
            break;
          case 7:
            result.text = controller.text;
            break;
          case 8:
            result.text = (temp / 3).toString();
            break;
          case 9:
            result.text = (temp / 5280).toString();
            break;
        }
      }
      if (from == 8) {
        switch (to) {
          case 1:
            result.text = (temp * 914400000).toString();
            break;
          case 2:
            result.text = (temp * 914.4).toString();
            break;
          case 3:
            result.text = (temp * 91.44).toString();
            break;
          case 4:
            result.text = (temp * 0.9144).toString();
            break;
          case 5:
            result.text = (temp * 0.0009144).toString();
            break;
          case 6:
            result.text = (temp * 36).toString();
            break;
          case 7:
            result.text = (temp * 3).toString();
            break;
          case 8:
            result.text = controller.text;
            break;
          case 9:
            result.text = (temp / 1760).toString();
            break;
        }
      }
      if (from == 9) {
        switch (to) {
          case 1:
            result.text = (temp * 1609300000000).toString();
            break;
          case 2:
            result.text = (temp * 1609344).toString();
            break;
          case 3:
            result.text = (temp * 160934.4).toString();
            break;
          case 4:
            result.text = (temp * 1609.344).toString();
            break;
          case 5:
            result.text = (temp * 1.609344).toString();
            break;
          case 6:
            result.text = (temp * 63360).toString();
            break;
          case 7:
            result.text = (temp * 5280).toString();
            break;
          case 8:
            result.text = (temp * 1760).toString();
            break;
          case 9:
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
          'Length',
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
                  'Nanometers',
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
                    child: Text('Nanometers'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Millimeters'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Centimeters'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Meters'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Kilometers'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('Inches'),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text('Feet'),
                    value: 7,
                  ),
                  DropdownMenuItem(
                    child: Text('Yards'),
                    value: 8,
                  ),
                  DropdownMenuItem(
                    child: Text('Miles'),
                    value: 9,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list1 = value as int;
                  });
                  length(list1!, list2!);
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
                  'Nanometers',
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
                    child: Text('Nanometers'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Millimeters'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Centimeters'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Meters'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Kilometers'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('Inches'),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text('Feet'),
                    value: 7,
                  ),
                  DropdownMenuItem(
                    child: Text('Yards'),
                    value: 8,
                  ),
                  DropdownMenuItem(
                    child: Text('Miles'),
                    value: 9,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list2 = value as int;
                  });
                  length(list1!, list2!);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    numButton('7', () {
                      calculation('7');
                    }, 20.w, white, darkGrey),
                    numButton('4', () {
                      calculation('4');
                    }, 20.w, white, darkGrey),
                    numButton('1', () {
                      calculation('1');
                    }, 20.w, white, darkGrey),
                    numButton('.', () {
                      calculation('.');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('8', () {
                      calculation('8');
                    }, 20.w, white, darkGrey),
                    numButton('5', () {
                      calculation('5');
                    }, 20.w, white, darkGrey),
                    numButton('2', () {
                      calculation('2');
                    }, 20.w, white, darkGrey),
                    numButton('0', () {
                      calculation('0');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('9', () {
                      calculation('9');
                    }, 20.w, white, darkGrey),
                    numButton('6', () {
                      calculation('6');
                    }, 20.w, white, darkGrey),
                    numButton('3', () {
                      calculation('3');
                    }, 20.w, white, darkGrey),
                    numButton('00', () {
                      calculation('00');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('C', () {
                      calculation('C');
                    }, 43.5.w, yellow, darkGrey),
                    numButton('⌫', () {
                      calculation('⌫');
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
