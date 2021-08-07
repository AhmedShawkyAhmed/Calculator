import 'package:calculator/colors.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Standard extends StatefulWidget {
  const Standard({Key? key}) : super(key: key);

  @override
  _StandardState createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  TextEditingController controller = TextEditingController();
  TextEditingController result = TextEditingController();
  int number = 0;
  late double a, temp1, temp2, memory, total;
  late String character;

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
        setState(() {
          controller.text = controller.text + buttonText.toString();
          number = 1;
        });
      }
    }
    if (buttonText == '+') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = '+';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = '+';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == '-') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = '-';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = '-';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == 'X') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 1;
            character = 'X';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = 'X';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == '÷') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 1;
            character = '÷';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = '÷';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == '%') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = (a / 100).toString();
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
    if (buttonText == 'MC') {
      setState(() {
        controller.text = '';
        result.text = '';
        memory = 0;
      });
    }
    if (buttonText == 'M+') {
      setState(() {
        number = 1;
        if (number == 1) {
          memory = double.parse(result.text);
          assert(memory is double);
          memory += memory;
          result.text = memory.toString();
        }
      });
    }
    if (buttonText == 'M-') {
      setState(() {
        number = 1;
        if (number == 1) {
          memory = double.parse(result.text);
          assert(memory is double);
          memory -= memory;
          result.text = memory.toString();
        }
      });
    }
    if (buttonText == 'MR') {
      setState(() {
        if (result.text == '') {
          controller.text = '';
          result.text = result.text + memory.toString();
        } else {
          result.text = '';
          controller.text = '';
          result.text = result.text + memory.toString();
        }
      });
    }
    if (buttonText == '=') {
      if (controller.text == '') {
        result.text = '';
      } else {
        temp2 = double.parse(controller.text);
        switch (character) {
          case '+':
            total = temp1 + temp2;
            break;
          case '-':
            total = temp1 - temp2;
            break;
          case 'X':
            total = temp1 * temp2;
            break;
          case '÷':
            total = temp1 / temp2;
            break;
        }
      }
      setState(() {
        result.text = total.toString();
        number = 1;
        memory = total;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'Standard',
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
                    result.text,
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
                    numButton('MC', () {
                      calculation('MC');
                    }, 20.w, grey, darkGrey),
                    numButton('C', () {
                      calculation('C');
                    }, 20.w, yellow, darkGrey),
                    numButton('7', () {
                      calculation('7');
                    }, 20.w, white, darkGrey),
                    numButton('4', () {
                      calculation('4');
                    }, 20.w, white, darkGrey),
                    numButton('1', () {
                      calculation('1');
                    }, 20.w, white, darkGrey),
                    numButton('%', () {
                      calculation('%');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('M+', () {
                      calculation('M+');
                    }, 20.w, grey, darkGrey),
                    numButton('÷', () {
                      calculation('÷');
                    }, 20.w, yellow, darkGrey),
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
                    numButton('M-', () {
                      calculation('M-');
                    }, 20.w, grey, darkGrey),
                    numButton('X', () {
                      calculation('X');
                    }, 20.w, yellow, darkGrey),
                    numButton('9', () {
                      calculation('9');
                    }, 20.w, white, darkGrey),
                    numButton('6', () {
                      calculation('6');
                    }, 20.w, white, darkGrey),
                    numButton('3', () {
                      calculation('3');
                    }, 20.w, white, darkGrey),
                    numButton('.', () {
                      calculation('.');
                    }, 20.w, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('MR', () {
                      calculation('MR');
                    }, 20.w, grey, darkGrey),
                    numButton('⌫', () {
                      calculation('⌫');
                    }, 20.w, yellow, darkGrey),
                    numButton('-', () {
                      calculation('-');
                    }, 20.w, yellow, darkGrey),
                    numButton('+', () {
                      calculation('+');
                    }, 20.w, yellow, darkGrey),
                    numButton('=', () {
                      calculation('=');
                    }, 45.w, black, yellow),
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
