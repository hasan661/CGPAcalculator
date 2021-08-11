// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gpacal/cgpa.dart';
import 'headingbox.dart';
import 'newtextinputbox.dart';
import 'chart.dart';

class GpaInput extends StatefulWidget {
  final List SemesterWiseGpa;
  final List details;
  // num totalcredithourscgpa = 0;
  // num totalgpacgpa = 0;
  GpaInput(this.SemesterWiseGpa, this.details);
  @override
  _GpaInputState createState() => _GpaInputState();
}

class _GpaInputState extends State<GpaInput> {
  List data = [];
  int j = 1;
  int i = 0;
  num gpa = 0;
  num totalcredithours = 0;
  num totalgpa = 0;
  num totalcredithourscgpa = 0;
  num totalgpacgpa = 0;

  Map AddMapToGpa(String num, String gpa) {
    return {'SemesterNum': num, 'gpa': gpa};
  }

  final List _listOfControllers = [];

  void ShowGpa() {
    if (i == 0)
      return;
    else if (_listOfControllers[i - 1]['CrediHours'] != "0" &&
        _listOfControllers[i - 1]['Gpa'] != "0" &&
        int.parse(_listOfControllers[i - 1]['Gpa']) <=
            int.parse(widget.details[0]["MaxGpa"]) &&
        int.parse(_listOfControllers[i - 1]['Gpa']) > 0) {
      for (int index = 0; index < _listOfControllers.length; index++) {
        totalcredithours = totalcredithours +
            (num.parse(_listOfControllers[index]['CrediHours']));
        totalgpa = totalgpa +
            (num.parse(_listOfControllers[index]['Gpa']) *
                num.parse(_listOfControllers[index]['CrediHours']));
        print(_listOfControllers[index]['CrediHours']);
        totalcredithourscgpa = totalcredithourscgpa +
            num.parse(_listOfControllers[index]['CrediHours']);
        totalgpacgpa = totalgpacgpa +
            (num.parse(_listOfControllers[index]['Gpa'])) *
                num.parse(_listOfControllers[index]['CrediHours']);
      }
      gpa = totalgpa / totalcredithours;

      showModalBottomSheet(
          context: context,
          builder: (_) {
            return Container(
              color: Theme.of(context).primaryColor,
              // height: 300,
              child: Center(
                  child: Text(
                "YOUR CGPA THIS SEMESTER IS: $gpa",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            );
          });
      setState(() {
        data.clear();
        widget.SemesterWiseGpa.add(AddMapToGpa(j.toString(), gpa.toString()));
        j++;
        i = 0;
      });
      //  gpa = 0;
      totalcredithours = 0;
      totalgpa = 0;
    }
  }

  Map AddMapToList() {
    return {'CrediHours': '0', 'Gpa': '0'};
  }

  void addtolistvalidation() {
    setState(() {
      _listOfControllers.add(AddMapToList());
      data.add(NewTextInputBox(
        a: i,
        map: _listOfControllers,
      ));
      i++;
    });
  }

  void Addingtxtboxtolist() {
    if (i == 0) {
      addtolistvalidation();
    } else if (_listOfControllers[i - 1]['CrediHours'] != "0" &&
        _listOfControllers[i - 1]['Gpa'] != "0" &&
        int.parse(_listOfControllers[i - 1]['Gpa']) <=
            int.parse(widget.details[0]["MaxGpa"]) &&
        int.parse(_listOfControllers[i - 1]['Gpa']) > 0) {
      addtolistvalidation();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: [
          Card(
            child: Container(
              height: constraints.maxHeight * 0.4,
              child: Chart(widget.SemesterWiseGpa),
            ),
          ),

          // if(j>int.parse(widget.detials[0]["TotalSemesters"]))

          SingleChildScrollView(
            child: j <= int.parse(widget.details[0]['TotalSemesters'])
                ? Column(
                    children: [
                      Container(
                          height: constraints.maxHeight * 0.1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                  width: 5)),
                          child: Text("Semester no $j",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                                fontSize: 30,
                              ))),
                      Container(
                        height: constraints.maxHeight * 0.1,
                        child: HeadingBox(),
                      ),
                      Container(
                        height: constraints.maxHeight * 0.23,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return data[index];
                          },
                          itemCount: data.length,
                        ),
                      ),
                      // if (isEnabled)
                      Container(
                        height: constraints.maxHeight * 0.07,
                        child: TextButton(
                            onPressed: () {
                              ShowGpa();
                            },
                            child: Text(
                              "Calculate",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      ),
                      Container(
                        height: constraints.maxHeight * 0.07,
                        child: IconButton(
                            onPressed: Addingtxtboxtolist,
                            icon: Icon(Icons.add)),
                      )
                    ],
                  )
                : Container(
                  height: constraints.maxHeight*0.586,
                    child: CGPA(totalgpacgpa / totalcredithourscgpa),
                  ),
          ),
        ],
      );
    });
  }
}
