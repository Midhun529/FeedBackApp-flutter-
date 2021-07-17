import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  static const router = "/lastpage";
  @override
  Widget build(BuildContext context) {
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
              height: mediaData.height * 0.4,
              width: mediaData.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
