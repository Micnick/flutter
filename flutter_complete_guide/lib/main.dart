import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

@override
class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCoolAppState();
  }
}

class MyCoolAppState extends State<MyCoolApp> {
  var questionIndex = 0;
//Handler of button
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite Soccer team?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('TikTok'),
        ),
        body: Column(
          children: [
            //Top section
            Container(
              height: 100.0,
              color: Colors.yellow[300],
            ),
            //Middle Section
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.green[300],
                )),
                Container(
                  width: 100.0,
                  color: Colors.red[300],
                )
              ],
            )),

            //Bottom Section
            Container(
              height: 80.0,
              color: Colors.blue[300],
            )
          ],
        ),
      ),
    );
  }
}
