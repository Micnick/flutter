import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyCoolApp());

@override
class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _questionIndex = 0;
//Handler of button
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Leonardo', 'Leonardo', 'Leonardo', 'Lion'],
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
