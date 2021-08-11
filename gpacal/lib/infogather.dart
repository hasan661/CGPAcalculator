import 'package:flutter/material.dart';

class InfoGather extends StatelessWidget {
  final VoidCallback fun;
  final List details;

  InfoGather(this.fun, this.details);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: constraints.maxHeight * 0.6,
            // width: 400,
            
            child: FittedBox(
              child: Image.asset(
                "images/CGPA.png",fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            height: constraints.maxHeight * 0.10,
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
                  details[0]["TotalSemesters"] = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Number of semesters",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.red)))),
          ),

          Container(
            height: constraints.maxHeight * 0.10,
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
                  details[0]["MaxGpa"] = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Max GPA",
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.red)))),
          ),

          // IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit))
          Container(
            height: constraints.maxHeight * 0.1,
            child: TextButton(
                onPressed: () {
                  fun();
                },
                child: Text(
                  "Proceed",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
          )
        ],
      );
    });
  }
}
