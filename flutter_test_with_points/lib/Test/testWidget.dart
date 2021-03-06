import 'package:flutter/material.dart';
import 'package:flutter_test_with_points/Test/answerWidget.dart';
import 'package:flutter_test_with_points/Test/testStructure.dart';
import 'package:flutter_test_with_points/question/questionWidget.dart';

class Test extends StatelessWidget {
  final TestStructure _question;
  final Function _nextQuestion;
  Test(this._question, this._nextQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Question(_question.getQuestion()),
        ..._question.getAnswers().map((answer) {
          return Answer(answer["answer"].toString(),
              () => _nextQuestion(answer["points"]));
        }).toList(),
      ],
    ));
  }
}
