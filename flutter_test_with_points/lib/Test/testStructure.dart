import 'package:flutter/cupertino.dart';

class TestStructure {
  final String _question;
  final List _answers;
  TestStructure(this._question, this._answers);

  String getQuestion() {
    return _question;
  }

  List getAnswers() {
    return _answers;
  }
}
