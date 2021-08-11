import 'package:flutter/material.dart';
class CGPA extends StatelessWidget {
 
 num cgpa;
 CGPA(this.cgpa);

  @override
  Widget build(BuildContext context) {
    return Container(
              color: Theme.of(context).primaryColor,
              // height: 400,
              child: Center(
                  child: Text(
                "YOUR CGPA THIS SEMESTER IS: $cgpa",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            );
  }
}