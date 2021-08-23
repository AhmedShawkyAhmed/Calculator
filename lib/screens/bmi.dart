import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sizer/sizer.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  double height = 0, weight = 0, age = 0, bmi = 0;
  late String text;

  void calculate() {
    setState(() {
      bmi = weight / (height / 100 * height / 100);
      if (bmi < 18.5) {
        text = "you are currently underweight.";
      } else if (bmi >= 18.5 && bmi <= 24.9) {
        text = "you are normal weight.";
      } else if (bmi >= 25 && bmi <= 29.9) {
        text = "you are currently overweight.";
      } else if (bmi >= 30) {
        text = "you are obese.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
            color: white,
          ),
        ),
        backgroundColor: black,
      ),
      drawer: calculatorDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 100.w,
          height: 100.h,
          color: black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: darkGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Height',
                            style: TextStyle(color: white, fontSize: 30),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RotatedBox(
                                  quarterTurns: 15,
                                  child: Slider(
                                    activeColor: yellow,
                                    inactiveColor: white,
                                    value: height,
                                    min: 0,
                                    max: 300,
                                    divisions: 300,
                                    onChanged: (double value) {
                                      setState(() {
                                        height = value;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  height.toStringAsFixed(0),
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                    color: white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 25.h,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(color: white, fontSize: 30),
                            ),
                            Text(
                              weight.toStringAsFixed(0),
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Text(
                              'kg',
                              style: TextStyle(
                                color: white,
                                fontSize: 20,
                              ),
                            ),
                            Slider(
                              activeColor: yellow,
                              inactiveColor: white,
                              value: weight,
                              min: 0,
                              max: 200,
                              divisions: 200,
                              onChanged: (double value) {
                                setState(() {
                                  weight = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 25.h,
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(color: white, fontSize: 30),
                            ),
                            Text(
                              age.toStringAsFixed(0),
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),
                            ),
                            Slider(
                              activeColor: yellow,
                              inactiveColor: white,
                              value: age,
                              min: 0,
                              max: 120,
                              divisions: 200,
                              onChanged: (double value) {
                                setState(() {
                                  age = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90.w,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 10.h,
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          color: black,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      color: yellow,
                      onPressed: () {
                        calculate();
                        Alert(
                          context: context,
                          title: "Your BMI is",
                          style: AlertStyle(
                            backgroundColor: darkGrey,
                            titleStyle: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          content: Column(
                            children: <Widget>[
                              Text(
                                bmi.toStringAsFixed(3),
                                style: TextStyle(color: white),
                              ),
                              Text(
                                text,
                                style: TextStyle(color: white),
                              ),
                              Text(
                                'your age is ' + age.toStringAsFixed(0),
                                style: TextStyle(color: white),
                              ),
                            ],
                          ),
                          buttons: [
                            DialogButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                ),
                              ),
                              color: yellow,
                            )
                          ],
                        ).show();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
