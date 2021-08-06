import 'package:calculator/colors.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/num_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Temperature extends StatefulWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  TextEditingController controller = TextEditingController();
  int? list1,list2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text('Temperature',style: TextStyle(fontSize: 25,color: white),),
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
              child: DropdownButton(
                hint: Text('Select Unite',style: TextStyle(color: grey,fontSize: 25,),),
                value: list1,
                style: TextStyle(color: grey,fontSize: 25),
                dropdownColor: black,
                items: const[
                  DropdownMenuItem(child: Text('Celsius'),value: 1,),
                  DropdownMenuItem(child: Text('Fahrenheit'),value: 2,),
                  DropdownMenuItem(child: Text('Kelvin'),value: 3,),
                ],
                onChanged: (value) {
                  setState(() {
                    list1 = value as int?;
                  });
                },
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
              child: DropdownButton(
                hint: Text('Select Unite',style: TextStyle(color: grey,fontSize: 25,),),
                value: list2,
                style: TextStyle(color: grey,fontSize: 25),
                dropdownColor: black,
                items: const[
                  DropdownMenuItem(child: Text('Celsius'),value: 1,),
                  DropdownMenuItem(child: Text('Fahrenheit'),value: 2,),
                  DropdownMenuItem(child: Text('Kelvin'),value: 3,),
                ],
                onChanged: (value) {
                  setState(() {
                    list2 = value as int?;
                  });
                },
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
                    numButton('+/-', () {}, 20.w, white, darkGrey),
                    numButton('C', () {}, 20.w, yellow, darkGrey),
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
