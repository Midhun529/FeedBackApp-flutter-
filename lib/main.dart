import 'package:flutter/material.dart';

import "./screens/mcqmainscreen.dart";
import "./screens/firstQuestion.dart";
import "./screens/finalpage.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QSTP",
      home: McqMainScreen(),
      theme: ThemeData(
        accentColor: Colors.orange,
        primarySwatch: Colors.yellow,
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
                // ignore: deprecated_member_use
                title: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 30,
            )),
      ),
      routes: {
        Question.router: (context) => Question(),
        FinalPage.router: (context) => FinalPage(),
      },
    );
  }
}
