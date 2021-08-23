import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/gpa_row.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GPA extends StatefulWidget {
  const GPA({Key? key}) : super(key: key);

  @override
  _GPAState createState() => _GPAState();
}

class _GPAState extends State<GPA> {
  double gpa = 0;
  String grade = 'F';
  int row = 5;

  void addRow(){
    setState(() {
      row = row + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        title: Text(
          'GPA Calculator',
          style: TextStyle(
            fontSize: 25,
            color: white,
          ),
        ),
        backgroundColor: black,
      ),
      drawer: calculatorDrawer(context),
      body: ListView.builder(
          itemCount: row,
          itemBuilder: (BuildContext context,int index){
            return gpaRow(1,(){},);
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addRow(),
        child: Icon(
          Icons.add,
          color: black,
        ),
        backgroundColor: yellow,
      ),
    );
  }
}
