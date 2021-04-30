import 'package:flutter/material.dart';
import 'package:vize_odev/sinav/quiz.dart';
import 'package:vize_odev/sonuc/result.dart';


void main() => runApp( MyApp() );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -10 },      //Map kullandigimiz icin (anahtar : degeri, anhtar:degeri) olur
        {'text': 'Adobe', 'score': -10},
        {'text': 'Google', 'score': 20},
        {'text': 'Microsoft', 'score': -10},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -10},
        {'text': 'IOS Development Kit', 'score': -10},
        {'text': 'Web Development Kit', 'score': -10},
        {
          'text':
          'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 20},
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -10},
        {'text': 'Dart', 'score': 20},
        {'text': 'C++', 'score': -10},
        {'text': 'Kotlin', 'score': -10},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 20},
        {'text': 'Brendan Eich', 'score': -10},
        {'text': 'Bjarne Stroustrup', 'score': -10},
        {'text': 'Jeremy Ashkenas', 'score': -10},
      ],
    },
    {
      'questionText':
      'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -10,
        },
        {'text': 'No', 'score': 20},
      ],
    },
  ];

  var _questionNum = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionNum = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionNum = (_questionNum + 1) as int;
    });
    print(_questions);
    if (_questionNum < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WELCOME TO OUR QUIZ APPLICATION'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionNum < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionNum,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
