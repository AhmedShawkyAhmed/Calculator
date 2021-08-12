import 'package:calculator/screens/calculator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Calculator',
            home: Calculator(),
          );
        }
    );
  }
}

