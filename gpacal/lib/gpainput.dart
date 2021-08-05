import 'package:flutter/material.dart';
import 'headingbox.dart';
import 'newtextinputbox.dart';

class GpaInput extends StatefulWidget {
  @override
  _GpaInputState createState() => _GpaInputState();
}

class _GpaInputState extends State<GpaInput> {
  List SemesterWiseGpa=[];

  List<Widget> data = [];
  int j = 1;
  int i = 0;
  num gpa = 0;
  num totalcredithours = 0;
  num totalgpa = 0;

  Map AddMapToList() {
    return {'CrediHours': '0', 'Gpa': '0'};
  }

  final List _listOfControllers = [];

  void ShowGpa() {
    for (int j = 0; j < _listOfControllers.length; j++) {
      totalcredithours =
          totalcredithours + (num.parse(_listOfControllers[j]['CrediHours']));
      totalgpa = totalgpa +
          (num.parse(_listOfControllers[j]['Gpa']) *
              num.parse(_listOfControllers[j]['CrediHours']));
    }
    gpa = totalgpa / totalcredithours;

    showModalBottomSheet(
        context: context,
        builder: (_) {
          return Container(
            color: Theme.of(context).primaryColor,
            height: 300,
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
          j++;

          
        });
  }

  void Addingtxtboxtolist() {
    setState(() {
      _listOfControllers.add(AddMapToList());
      data.add(NewTextInputBox(
        a: i,
        map: _listOfControllers,
      ));
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 5)),
                child: Text("Semester no $j",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                    ))),
            HeadingBox(),
            Container(
              height: 190,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return data[index];
                },
                itemCount: data.length,
              ),
            ),
            TextButton(
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
            IconButton(onPressed: Addingtxtboxtolist, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
