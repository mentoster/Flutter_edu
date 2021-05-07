import 'package:flutter/cupertino.dart';

class TestStructure {
  final String _question;
  final List<Map<String, Object>> _answers;
  TestStructure(this._question, this._answers);

  String getQuestion() {
    return _question;
  }

  List<Map<String, Object>> getAnswers() {
    return _answers;
  }
}
