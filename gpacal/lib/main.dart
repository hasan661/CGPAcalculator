import 'package:flutter/material.dart';
import 'package:gpacal/infogather.dart';
import 'gpainput.dart';
// import 'chart.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

        theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 0, 128, 1),
          accentColor: Color.fromRGBO(0, 0, 128, 1),
        ),
        home: App());
  }
}

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final appbar=AppBar(
              title: Text("CGPA Calculator"),
            );
  List details = [
    {"MaxGpa": "0", "TotalSemesters": "0"}
  ];

  int showpage = 0;

  final List<dynamic> gpa = [];

  void fun() {
    // print(details[0]["MaxGpa"]);
    if (details[0]["MaxGpa"] != "0" && details[0]["TotalSemesters"] != "0") {
      setState(() {
        showpage = 1;
        print(details[0]['TotalSemesters']);
        print(details[0]['MaxGpa']);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: appbar,
            body: Container(
              height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-MediaQuery.of(context).padding.top),
                child: showpage == 1
                    ? 
                      
                        GpaInput(gpa, details)
                      
                    : InfoGather(fun, details)));
  }

}