import 'dart:math';
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
        assert(temp2 is double);
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
          case '^':
            total = pow(temp1, temp2).toDouble();
            break;
          case '√':
            total = pow(temp1, (1/temp2)).toDouble();
            break;
          case 'L':
            total = (log(temp1)/ln10) / (log(temp2)/ln10);
            break;
          case 'C':
            total = C(temp1, temp2);
            break;
          case 'P':
            total = P(temp1, temp2);
            break;
          case '%':
            total = temp1 % temp2;
            break;
          default:
            total = 1 * temp2;
        }
      }
      setState(() {
        result.text = total.toString();
        number = 1;
      });
    }
    if (buttonText == 'sin') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = sin(a*(pi/180)).toString();
      });
    }
    if (buttonText == 'cos') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = cos(a*(pi/180)).toString();
      });
    }
    if (buttonText == 'tan') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = tan(a*(pi/180)).toString();
      });
    }
    if (buttonText == 'log') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = (log(a)/ln10).toString();
      });
    }
    if (buttonText == 'x^2') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = pow(a, 2).toString();
      });
    }
    if (buttonText == 'n^x') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = '^';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = '^';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == '2√x') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = sqrt(a).toString();
      });
    }
    if (buttonText == 'n√x') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = '√';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = '√';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == '1/x') {
      setState(() {
        a = 1/double.parse(controller.text);
        assert(a is double);
        result.text = a.toString();
      });
    }
    if (buttonText == 'n!') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = fact(a).toString();
      });
    }
    if (buttonText == 'µ') {
      if(controller.text.isEmpty){
        setState(() {
          controller.text = pi.toString();
        });
      }else{
        setState(() {
          a = double.parse(controller.text);
          assert(a is double);
          controller.text = (a * pi).toString();
        });
      }
    }
    if (buttonText == 'sin-1') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = (asin(a)*(180/pi)).toString();
      });
    }
    if (buttonText == 'Cos-1') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = (acos(a)*(180/pi)).toString();
      });
    }
    if (buttonText == 'Tan-1') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = (atan(a)*(180/pi)).toString();
      });
    }
    if (buttonText == 'Nlogx') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = 'L';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = 'L';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == 'e') {
      if(controller.text.isEmpty){
        setState(() {
          controller.text = e.toString();
        });
      }else{
        setState(() {
          a = double.parse(controller.text);
          assert(a is double);
          result.text = (a * e).toString();
        });
      }
    }
    if (buttonText == 'e^x') {
      if(controller.text.isEmpty){
        setState(() {
          controller.text = pow(e, 1).toString();
        });
      }else{
        setState(() {
          a = double.parse(controller.text);
          assert(a is double);
          result.text = pow(e, a).toString();
        });
      }
    }
    if (buttonText == 'nPr') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = 'P';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = 'P';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == 'nCr') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = 'C';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = 'C';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == 'mod') {
      setState(() {
        if (controller.text == '') {
          setState(() {
            controller.text = '';
            temp1 = 0;
            character = '%';
          });
        } else {
          setState(() {
            temp1 = double.parse(controller.text);
            character = '%';
            number = 0;
            controller.text = '';
          });
        }
      });
    }
    if (buttonText == 'Rad') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        controller.text = (a*(pi/180)).toString();
      });
    }
    if (buttonText == 'Deg') {
      setState(() {
        a = double.parse(controller.text);
        assert(a is double);
        result.text = (a*(180/pi)).toString();
      });
    }
  }

  // Function to Calculate the Factorial (n!)
  double fact(double x) {
    double u = 1;
    for (double i = 1; i <= x; i++) {
      u *=i;
    }
    return u;
  }

  // Function to Calculate the equation of Combinations (nCr)
  double C(double n, double r){
    return fact(n) / (fact(r) * fact(n - r));
  }

  // nPr and P Functions are used to Calculate the equation of Permutations (nPr)
  double nPr(double p){
    if (p <= 1) {
      return 1;
    }
    return p * nPr(p - 1);
  }

  double P(double n, double r){
    return nPr(n) / nPr(n - r);
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
                height: 10.h,
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
                height: 10.h,
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
                          numButton('sin', () {
                            calculation('sin');
                          }, 7.h, grey, darkGrey),
                          numButton('x^2', () {
                            calculation('x^2');
                          }, 7.h, grey, darkGrey),
                          numButton('1/x', () {
                            calculation('1/x');
                          }, 7.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('cos', () {
                            calculation('cos');
                          }, 7.h, grey, darkGrey),
                          numButton('n^x', () {
                            calculation('n^x');
                          }, 7.h, grey, darkGrey),
                          numButton('n!', () {
                            calculation('n!');
                          }, 7.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('tan', () {
                            calculation('tan');
                          }, 7.h, grey, darkGrey),
                          numButton('2√x', () {
                            calculation('2√x');
                          }, 7.h, grey, darkGrey),
                          numButton('µ', () {
                            calculation('µ');
                          }, 7.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('log', () {
                            calculation('log');
                          }, 7.h, grey, darkGrey),
                          numButton('n√x', () {
                            calculation('n√x');
                          }, 7.h, grey, darkGrey),
                          numButton('2nd', () {
                            calculation('2st');
                          }, 7.h, yellow, darkGrey),
                        ],
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          numButton('sin-1', () {
                            calculation('sin-1');
                          }, 7.h, grey, darkGrey),
                          numButton('Rad', () {
                            calculation('Rad');
                          }, 7.h, grey, darkGrey),
                          numButton('mod', () {
                            calculation('mod');
                          }, 7.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('cos-1', () {
                            calculation('cos-1');
                          }, 7.h, grey, darkGrey),
                          numButton('Deg', () {
                            calculation('Deg');
                          }, 7.h, grey, darkGrey),
                          numButton('e', () {
                            calculation('e');
                          }, 7.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('tan-1', () {
                            calculation('tan-1');
                          }, 7.h, grey, darkGrey),
                          numButton('nPr', () {
                            calculation('nPr');
                          }, 7.h, grey, darkGrey),
                          numButton('e^x', () {
                            calculation('e^x');
                          }, 7.h, grey, darkGrey),
                        ],
                      ),
                      Column(
                        children: [
                          numButton('Nlogx', () {
                            calculation('Nlogx');
                          }, 7.h, grey, darkGrey),
                          numButton('nCr', () {
                            calculation('nCr');
                          }, 7.h, grey, darkGrey),
                          numButton('1st', () {
                            calculation('1st');
                          }, 7.h, yellow, darkGrey),
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
                    }, 7.h, yellow, darkGrey),
                    numButton('7', () {
                      calculation('7');
                    }, 7.h, white, darkGrey),
                    numButton('4', () {
                      calculation('4');
                    }, 7.h, white, darkGrey),
                    numButton('1', () {
                      calculation('1');
                    }, 7.h, white, darkGrey),
                    numButton('+/-', () {
                      calculation('+/-');
                    }, 7.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('÷', () {
                      calculation('÷');
                    }, 7.h, yellow, darkGrey),
                    numButton('8', () {
                      calculation('8');
                    }, 7.h, white, darkGrey),
                    numButton('5', () {
                      calculation('5');
                    }, 7.h, white, darkGrey),
                    numButton('2', () {
                      calculation('2');
                    }, 7.h, white, darkGrey),
                    numButton('0', () {
                      calculation('0');
                    }, 7.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('X', () {
                      calculation('X');
                    }, 7.h, yellow, darkGrey),
                    numButton('9', () {
                      calculation('9');
                    }, 7.h, white, darkGrey),
                    numButton('6', () {
                      calculation('6');
                    }, 7.h, white, darkGrey),
                    numButton('3', () {
                      calculation('3');
                    }, 7.h, white, darkGrey),
                    numButton('.', () {
                      calculation('.');
                    }, 7.h, white, darkGrey),
                  ],
                ),
                Column(
                  children: [
                    numButton('⌫', () {
                      calculation('⌫');
                    }, 7.h, yellow, darkGrey),
                    numButton('-', () {
                      calculation('-');
                    }, 7.h, yellow, darkGrey),
                    numButton('+', () {
                      calculation('+');
                    }, 7.h, yellow, darkGrey),
                    numButton('=', () {
                      calculation('=');
                    }, 16.5.h, black, yellow),
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
