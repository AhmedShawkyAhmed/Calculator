import 'package:calculator/constants.dart';
import 'package:calculator/widget/drawer.dart';
import 'package:calculator/widget/gpa_row.dart';
import 'package:flutter/material.dart';

class GPA extends StatefulWidget {
  const GPA({Key? key}) : super(key: key);

  @override
  _GPAState createState() => _GPAState();
}

class _GPAState extends State<GPA> {
  double gpa = 0;
  String grade = 'F';
  int row = 5;

  void addRow() {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 5,
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your GPA',
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Your Grade',
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 15,
              right: 90,
              left: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$gpa',
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                  ),
                ),
                Text(
                  grade,
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: row,
              itemBuilder: (BuildContext context, int index) {
                return gpaRow(
                  index+1,
                  1,
                  () {},
                );
              }),
        ],
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
