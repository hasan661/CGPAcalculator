import 'package:flutter/material.dart';

class NewTextInputBox extends StatefulWidget {
  var a;
  List map;
  NewTextInputBox({this.a, required this.map});

  @override
  _NewTextInputBoxState createState() => _NewTextInputBoxState();
}

class _NewTextInputBoxState extends State<NewTextInputBox> {
  // void Test()
  // {
  //   print(widget.map);
  // }

  Widget build(BuildContext context) {
    return 
    Row(
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
                    hintText: "Course ${widget.a + 1}",
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
                onChanged: (value) {
                  // print(widget.a);
                  widget.map[widget.a]['CrediHours'] = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.red)))),
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
                onChanged: (value) {
                  widget.map[widget.a]['Gpa'] = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
          ),
        ),
      ],
    );
  }
}
