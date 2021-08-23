import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget gpaRow(int value, VoidCallback call){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: 100.w,
      height: 50,
      color: black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30.w,
            height: 50,
            color: darkGrey,
            child: TextFormField(
              maxLength: 20,
              maxLines: 1,
              style: TextStyle(
                color: white,
                fontSize: 20
              ),
              decoration: InputDecoration(
                counterText: '',
                hintText: 'Subject',
                hintStyle: TextStyle(
                  color: grey,
                ),
                fillColor: black,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: darkGrey,
                  ),
                ),
              ),
            ),
          ),
          DropdownButton(
            hint: Text(
              'Grade',
              style: TextStyle(
                color: grey,
                fontSize: 25,
              ),
            ),
            value: value,
            style: TextStyle(color: grey, fontSize: 25),
            dropdownColor: black,
            items: const [
              DropdownMenuItem(
                child: Text('A+'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('A'),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text('A-'),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text('B+'),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text('B'),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text('B-'),
                value: 6,
              ),
              DropdownMenuItem(
                child: Text('C+'),
                value: 7,
              ),
              DropdownMenuItem(
                child: Text('C'),
                value: 8,
              ),
              DropdownMenuItem(
                child: Text('C-'),
                value: 9,
              ),
              DropdownMenuItem(
                child: Text('D+'),
                value: 10,
              ),
              DropdownMenuItem(
                child: Text('D'),
                value: 11,
              ),
              DropdownMenuItem(
                child: Text('D-'),
                value: 12,
              ),
              DropdownMenuItem(
                child: Text('F'),
                value: 13,
              ),
            ],
            onChanged: (value) {
              call;
            },
          ),
          DropdownButton(
            hint: Text(
              'Hours',
              style: TextStyle(
                color: grey,
                fontSize: 25,
              ),
            ),
            value: value,
            style: TextStyle(color: grey, fontSize: 25),
            dropdownColor: black,
            items: const [
              DropdownMenuItem(
                child: Text('1'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('2'),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text('3'),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text('4'),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text('5'),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text('6'),
                value: 6,
              ),
              DropdownMenuItem(
                child: Text('7'),
                value: 7,
              ),
              DropdownMenuItem(
                child: Text('8'),
                value: 8,
              ),
            ],
            onChanged: (value) {
              call;
            },
          ),
        ],
      ),
    ),
  );
}