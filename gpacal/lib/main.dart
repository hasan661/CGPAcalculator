import 'package:flutter/material.dart';

import 'gpainput.dart';
import 'chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<dynamic> gpa = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 0, 128, 1),
        accentColor: Color.fromRGBO(0, 0, 128, 1),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("CGPA Calculator"),
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(child: Chart(gpa)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Card(
                      child: GpaInput(gpa),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
