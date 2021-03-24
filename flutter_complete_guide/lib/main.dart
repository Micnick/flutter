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
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 Chosen')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen');
                }),
          ],
        ),
      ),
    );
  }
}
