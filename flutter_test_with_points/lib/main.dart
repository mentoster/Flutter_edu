import 'package:flutter/material.dart';

import 'package:flutter_test_with_points/Test/testStructure.dart';
import 'package:flutter_test_with_points/Test/testWidget.dart';
import 'package:flutter_test_with_points/result/resultWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  int _points = 0;
  final List<TestStructure> _questions = [
    TestStructure(
      "Кто я?",
      [
        {"answer": "программист", "points": 4},
        {"answer": "автор", "points": 6},
        {"answer": "тестировщик", "points": 3},
        {"answer": "не тестировщик", "points": 1},
      ],
    ),
    TestStructure(
      "Кто ты?",
      [
        {"answer": "не ты ", "points": 4},
        {"answer": "я", "points": 6},
        {"answer": "я не я", "points": 3},
        {"answer": "вы", "points": 1},
      ],
    ),
    
  ];
  void _nextQuestion(int points) {
    setState(() {
      _points += points;
      ++_questionIndex;
    });
  }

  void _retry() {
    setState(() {
      _points = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: _questionIndex < _questions.length
                ? Test(_questions[_questionIndex], _nextQuestion)
                : Result(_points, _retry)));
  }
}
