import 'package:flutter/material.dart';

class HeadingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                bottom:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                left:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                right:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
              ),
            ),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintText: "Course",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)))),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                bottom:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                left:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                right:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
              ),
            ),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintText: "CreditHours",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)))),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                bottom:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                left:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
                right:
                    BorderSide(width: 3.2, color: Color.fromRGBO(0, 0, 128, 1)),
              ),
            ),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintText: "GPA",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)))),
          ),
        ),
      ],
    );
  }
}
