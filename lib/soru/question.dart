import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), //margins' kenar bosluklari
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30), //fontsize /sorularin yazi boyutu
        textAlign: TextAlign.center,
      ),
    );
  }
}
