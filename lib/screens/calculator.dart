import 'package:calculator/constants.dart';
import 'package:calculator/screens/scientific.dart';
import 'package:calculator/screens/standard.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: black,
      drawer: calculatorDrawer(context),
      body: width > height?const Scientific():const Standard() ,
    );
  }
}