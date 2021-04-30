import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        textColor: Colors.black,
        child: Text( answerText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,

        ),

        onPressed: selectAnswer,//buttoni bastiktan sonra sectigimiz cevaplar bos bi listeye aktarmamiz lazim

      ),
    );
  }
}
