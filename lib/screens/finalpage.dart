import 'package:flutter/material.dart';
import './mcqmainscreen.dart';

class FinalPage extends StatelessWidget {
  static const router = "/lastpage";
  colorChange(mark) {
    if (mark <= 10) {
      return Text(
        "We are sorry for your inconvenience",
        style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),
        textAlign: TextAlign.center,
      );
    } else if (10 < mark && mark <= 20) {
      return Text("Hope we serve you better next time",
          style: TextStyle(
              color: Colors.yellow[700],
              fontWeight: FontWeight.bold,
              fontSize: 25));
    } else {
      return Text("We hope you come back next time.",
          style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.bold,
              fontSize: 25));
    }
  }

  @override
  Widget build(BuildContext context) {
    final totalMark = ModalRoute.of(context).settings.arguments;
    var mediaData = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text(
          "MCQ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
                height: mediaData.height * 0.2, width: mediaData.width * 1),
            Container(
              padding: EdgeInsets.only(top: 100),
              child: colorChange(totalMark),
              height: mediaData.height * 0.4,
              width: mediaData.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.amber[100],
              ),
            ),
            FlatButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed("/"),
                child: Text("go to FIrstpage"),
                color: Colors.red),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Text("Move To FIrst Page"),
      //   onPressed: () =>
      //       Navigator.of(context).pushReplacementNamed(McqMainScreen.route),

      // ),
    );
  }
}
