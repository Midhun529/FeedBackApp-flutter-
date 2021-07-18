import 'package:flutter/material.dart';
import './firstQuestion.dart';

class McqMainScreen extends StatelessWidget {
  static final route = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          backgroundColor: Colors.yellow[300],
          elevation: 10,
          title: Text("QSTP"),
        ),
        body: InkWell(
          child: Container(
            height: 100,
            margin: EdgeInsets.only(top: 200),
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 100,
                ),
                Text(
                  " Enter your Feedback",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          onTap: () => Navigator.of(context).pushNamed(Question.router),
        ));
  }
}
