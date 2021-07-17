import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatefulWidget {
  static const router = "/Question";
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var question = [
    "1) How is our decoration",
    "2) Rate our food  out of 5",
    "3) How was our workers ,are they frendly",
    "4) Rate our Wedding photography",
    "5) How was your stay in our hotel?",
    "6) How was our Event Coordination"
  ];
  var mark = 0;
  var n = 0;

  nextQuestion() {
    setState(() {
      mark = mark + 1;
      n = n + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text(
            "MCQ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              shadowColor: Colors.black,
              child: Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  question[n],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              margin: EdgeInsets.only(top: 10),
            ),
            SizedBox(
              height: mediaSize.height * 0.15,
              width: mediaSize.width * 1,
            )
          ],
        ));
  }
}
