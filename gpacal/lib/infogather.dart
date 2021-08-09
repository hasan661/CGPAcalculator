import 'package:flutter/material.dart';

class InfoGather extends StatelessWidget {
 
  VoidCallback fun;
  List details;
  InfoGather(this.fun,this.details);
  @override
  Widget build(BuildContext context) {
    

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        Flexible(
          child: Container(
            width: 200,
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
                  details[0]["TotalSemesters"]=value;
      
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
        ),
        Flexible(
          child: Container(
            width: 200,
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
                  details[0]["MaxGpa"]=value;
              
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                   labelText: "Max GPA",
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.red)))),
          ),
        ),
        // IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit))
        TextButton(onPressed: (){
         
          fun();
          
        }, child: Text("Proceed",style: TextStyle(color: Theme.of(context).primaryColor),))
      ],
    );
  }
}
