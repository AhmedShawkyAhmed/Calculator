import 'package:calculator/constants.dart';
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
      time(list1!, list2!);
    }
  }

  void time(int from, int to) {
    if (controller.text.isNotEmpty) {
      temp = double.parse(controller.text);
      assert(temp is double);
      if (from == 1) {
        switch (to) {
          case 1:
            result.text = controller.text;
            break;
          case 2:
            result.text = (temp / 1000).toString();
            break;
          case 3:
            result.text = (temp / 1000000).toString();
            break;
          case 4:
            result.text = (temp / 60000000).toString();
            break;
          case 5:
            result.text = (temp / 3600000000).toString();
            break;
          case 6:
            result.text = (temp / 86400000000).toString();
            break;
          case 7:
            result.text = (temp / 604800000000).toString();
            break;
          case 8:
            result.text = (temp / 31536000000000).toString();
            break;
        }
      }
      if (from == 2) {
        switch (to) {
          case 1:
            result.text = (temp * 1000).toString();
            break;
          case 2:
            result.text = controller.text;
            break;
          case 3:
            result.text = (temp / 1000).toString();
            break;
          case 4:
            result.text = (temp / 60000).toString();
            break;
          case 5:
            result.text = (temp / 3600000).toString();
            break;
          case 6:
            result.text = (temp / 86400000).toString();
            break;
          case 7:
            result.text = (temp / 604800000).toString();
            break;
          case 8:
            result.text = (temp / 31536000000).toString();
            break;
        }
      }
      if (from == 3) {
        switch (to) {
          case 1:
            result.text = (temp * 1000000).toString();
            break;
          case 2:
            result.text = (temp * 1000).toString();
            break;
          case 3:
            result.text = controller.text;
            break;
          case 4:
            result.text = (temp / 60).toString();
            break;
          case 5:
            result.text = (temp / 3600).toString();
            break;
          case 6:
            result.text = (temp / 86400).toString();
            break;
          case 7:
            result.text = (temp / 604800).toString();
            break;
          case 8:
            result.text = (temp / 31536000).toString();
            break;
        }
      }
      if (from == 4) {
        switch (to) {
          case 1:
            result.text = (temp * 60000000).toString();
            break;
          case 2:
            result.text = (temp * 60000).toString();
            break;
          case 3:
            result.text = (temp * 60).toString();
            break;
          case 4:
            result.text = controller.text;
            break;
          case 5:
            result.text = (temp / 60).toString();
            break;
          case 6:
            result.text = (temp / 1440).toString();
            break;
          case 7:
            result.text = (temp / 10080).toString();
            break;
          case 8:
            result.text = (temp / 525600).toString();
            break;
        }
      }
      if (from == 5) {
        switch (to) {
          case 1:
            result.text = (temp * 3600000000).toString();
            break;
          case 2:
            result.text = (temp * 3600000).toString();
            break;
          case 3:
            result.text = (temp * 3600).toString();
            break;
          case 4:
            result.text = (temp * 60).toString();
            break;
          case 5:
            result.text = controller.text;
            break;
          case 6:
            result.text = (temp / 24).toString();
            break;
          case 7:
            result.text = (temp / 168).toString();
            break;
          case 8:
            result.text = (temp / 8760).toString();
            break;
        }
      }
      if (from == 6) {
        switch (to) {
          case 1:
            result.text = (temp * 86400000000).toString();
            break;
          case 2:
            result.text = (temp * 86400000).toString();
            break;
          case 3:
            result.text = (temp * 86400).toString();
            break;
          case 4:
            result.text = (temp * 1440).toString();
            break;
          case 5:
            result.text = (temp * 24).toString();
            break;
          case 6:
            result.text = controller.text;
            break;
          case 7:
            result.text = (temp / 7).toString();
            break;
          case 8:
            result.text = (temp / 365).toString();
            break;
        }
      }
      if (from == 7) {
        switch (to) {
          case 1:
            result.text = (temp * 604800000000).toString();
            break;
          case 2:
            result.text = (temp * 604800000).toString();
            break;
          case 3:
            result.text = (temp * 604800).toString();
            break;
          case 4:
            result.text = (temp * 10080).toString();
            break;
          case 5:
            result.text = (temp * 168).toString();
            break;
          case 6:
            result.text = (temp * 7).toString();
            break;
          case 7:
            result.text = controller.text;
            break;
          case 8:
            result.text = (temp * 0.01917808).toString();
            break;
        }
      }
      if (from == 8) {
        switch (to) {
          case 1:
            result.text = (temp * 31557600000000).toString();
            break;
          case 2:
            result.text = (temp * 31557600000).toString();
            break;
          case 3:
            result.text = (temp * 31557600).toString();
            break;
          case 4:
            result.text = (temp * 525960).toString();
            break;
          case 5:
            result.text = (temp * 8766).toString();
            break;
          case 6:
            result.text = (temp * 365.25).toString();
            break;
          case 7:
            result.text = (temp * 52.17857).toString();
            break;
          case 8:
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
          'Time',
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
                  'Microseconds',
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
                    child: Text('Microseconds'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Milliseconds'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Seconds'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Minutes'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Hours'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('Days'),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text('Weeks'),
                    value: 7,
                  ),
                  DropdownMenuItem(
                    child: Text('Years'),
                    value: 8,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list1 = value as int;
                  });
                  time(list1!, list2!);
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
                  'Microseconds',
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
                    child: Text('Microseconds'),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text('Milliseconds'),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text('Seconds'),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text('Minutes'),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text('Hours'),
                    value: 5,
                  ),
                  DropdownMenuItem(
                    child: Text('Days'),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text('Weeks'),
                    value: 7,
                  ),
                  DropdownMenuItem(
                    child: Text('Years'),
                    value: 8,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    list2 = value as int;
                  });
                  time(list1!, list2!);
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
