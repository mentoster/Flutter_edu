import 'package:flutter/material.dart';
import 'package:flutter_edu/Test/answerWidget.dart';
import 'package:flutter_edu/Test/testStructure.dart';
import 'package:flutter_edu/question/questionWidget.dart';

class Test extends StatelessWidget {
  final TestStructure _question;
  final void Function() _nextQuestion;
  Test(this._question, this._nextQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Question(_question.getQuestion()),
        ..._question.getAnswers().map((answer) {
          return Answer(answer, _nextQuestion);
        }).toList(),
      ],
    ));
  }
}
