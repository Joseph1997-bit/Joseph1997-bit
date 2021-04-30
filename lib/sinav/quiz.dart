import 'package:flutter/material.dart';
import 'package:vize_odev/cevap/answer.dart';
import 'package:vize_odev/soru/question.dart';


class Quiz extends StatelessWidget {
  final List< Map <String, Object> > questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],//sorulari tazmak icin ('questionText' : 'sorular')bu sekilde yazmamiz lazim
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>) .map( (answer) { //cevaplar yazmak icin ('answers'[secenekler] )bu sekilde kullanmamiz lazim
          return Answer(() => answerQuestion(answer['score']), answer['text']); // ('Text' : secenekler) mainde yazilir
        }
        ).toList() //sorular ve cevaplar sectikten/yazdiktan sonra listeye aktariyoz
      ],
    ); //Column
  }
}
