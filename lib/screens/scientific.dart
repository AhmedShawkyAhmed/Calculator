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
  bool state = true;

  void calculation(buttonText) {
    if (buttonText == '1st') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == '2st') {
      setState(() {
        state = !state;
      });
    }
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
    if (buttonText == '+/-') {
      temp = double.parse(controller.text);
      assert(temp is double);
      if (temp > 0) {
        setState(() {
          controller.text = '-' + temp.abs().toString();
        });
      } else if (temp < 0) {
        setState(() {
          controller.text = '' + temp.abs().toString();
        });
      }
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
    if (buttonText == 'Sin') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'Cos') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'Tan') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'log') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == '2^x') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'n^x') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == '2√x') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'n√x') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == '1/x') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'n!') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'µ') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'Sinh') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'Cosh') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'Tanh') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'Nlogx') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'e') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'e^x') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'nPr') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'nCr') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == 'mod') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == '(') {
      setState(() {
        state = !state;
      });
    }
    if (buttonText == ')') {
      setState(() {
        state = !state;
      });
    }
  }

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
            state
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          numButton('Sin', () {
                            calculation('Sin');
                          }, 8.h, grey, darkGrey),
                          numButton('2^x', () {
                            calculation('2^x');
                          }, 8.h, grey, darkGrey),
                          numButton('1/x', () {
                            calculation('1/x');
                          }, 8.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('Cos', () {
                            calculation('Cos');
                          }, 8.h, grey, darkGrey),
                          numButton('n^x', () {
                            calculation('n^x');
                          }, 8.h, grey, darkGrey),
                          numButton('n!', () {
                            calculation('n!');
                          }, 8.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('Tan', () {
                            calculation('Tan');
                          }, 8.h, grey, darkGrey),
                          numButton('2√x', () {
                            calculation('2√x');
                          }, 8.h, grey, darkGrey),
                          numButton('µ', () {
                            calculation('µ');
                          }, 8.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('log', () {
                            calculation('log');
                          }, 8.h, grey, darkGrey),
                          numButton('n√x', () {
                            calculation('n√x');
                          }, 8.h, grey, darkGrey),
                          numButton('2nd', () {
                            calculation('2st');
                          }, 8.h, yellow, darkGrey),
                        ],
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          numButton('Sinh', () {
                            calculation('Sinh');
                          }, 8.h, grey, darkGrey),
                          numButton('e', () {
                            calculation('e');
                          }, 8.h, grey, darkGrey),
                          numButton('mod', () {
                            calculation('mod');
                          }, 8.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('Cosh', () {
                            calculation('Cosh');
                          }, 8.h, grey, darkGrey),
                          numButton('e^x', () {
                            calculation('e^x');
                          }, 8.h, grey, darkGrey),
                          numButton('(', () {
                            calculation('(');
                          }, 8.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('Tanh', () {
                            calculation('Tanh');
                          }, 8.h, grey, darkGrey),
                          numButton('nPr', () {
                            calculation('nPr');
                          }, 8.h, grey, darkGrey),
                          numButton(')', () {
                            calculation(')');
                          }, 8.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('Nlogx', () {
                            calculation('Nlogx');
                          }, 8.h, grey, darkGrey),
                          numButton('nCr', () {
                            calculation('nCr');
                          }, 8.h, grey, darkGrey),
                          numButton('1st', () {
                            calculation('1st');
                          }, 8.h, yellow, darkGrey),
                        ],
                      ),
                    ],
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    numButton('C', () {
                      calculation('C');
                    }, 8.h, yellow, darkGrey),
                    numButton('7', () {
                      calculation('7');
                    }, 8.h, white, darkGrey),
                    numButton('4', () {
                      calculation('4');
                    }, 8.h, white, darkGrey),
                    numButton('1', () {
                      calculation('1');
                    }, 8.h, white, darkGrey),
                    numButton('+/-', () {
                      calculation('+/-');
                    }, 8.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('÷', () {
                      calculation('÷');
                    }, 8.h, yellow, darkGrey),
                    numButton('8', () {
                      calculation('8');
                    }, 8.h, white, darkGrey),
                    numButton('5', () {
                      calculation('5');
                    }, 8.h, white, darkGrey),
                    numButton('2', () {
                      calculation('2');
                    }, 8.h, white, darkGrey),
                    numButton('0', () {
                      calculation('0');
                    }, 8.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('X', () {
                      calculation('X');
                    }, 8.h, yellow, darkGrey),
                    numButton('9', () {
                      calculation('9');
                    }, 8.h, white, darkGrey),
                    numButton('6', () {
                      calculation('6');
                    }, 8.h, white, darkGrey),
                    numButton('3', () {
                      calculation('3');
                    }, 8.h, white, darkGrey),
                    numButton('.', () {
                      calculation('.');
                    }, 8.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('⌫', () {
                      calculation('⌫');
                    }, 8.h, yellow, darkGrey),
                    numButton('-', () {
                      calculation('-');
                    }, 8.h, yellow, darkGrey),
                    numButton('+', () {
                      calculation('+');
                    }, 8.h, yellow, darkGrey),
                    numButton('=', () {
                      calculation('=');
                    }, 18.h, black, yellow),
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
