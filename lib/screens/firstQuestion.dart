import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "./finalpage.dart";

class Question extends StatefulWidget {
  static const router = "/Question";
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var question = [
    "1) How did you like our service?",
    "2) How did you apperciate the sanitiation?",
    "3) How was the sound quality?",
    "4) How was the lighting",
    "5) How likely are you to reccomend us to your frirnds?",
    "6) How likely are you to come back here?"
  ];

  double mark = 0;
  var n = 0;
  double rating = 0;

  nextQuestion(rating) {
    setState(() {
      mark = mark + rating;
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
            "QSTP",
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
            ),
            Slider(
              value: rating,
              onChanged: ((double value) => setState(() => rating = value)),
              divisions: 5,
              label: "$rating",
              min: 0,
              max: 5,
              activeColor: Colors.red[400],
              inactiveColor: Colors.black54,
            ),
            SizedBox(
              height: mediaSize.height * 0.15,
              width: mediaSize.width * 1,
            ),
            FloatingActionButton(
              onPressed: () => setState(() {
                if (n < 5) {
                  mark = mark + rating;
                  n = n + 1;
                } else {
                  mark = mark + rating;
                  Navigator.of(context)
                      .pushNamed(FinalPage.router, arguments: mark);
                }
              }),
              child: Text("Next"),
              hoverColor: Colors.yellow[100],
            )
          ],
        ));
  }
}
