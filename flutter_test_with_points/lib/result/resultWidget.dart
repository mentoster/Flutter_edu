import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final void Function() _retry;
  Result(this._retry);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _retry();
        },
        child: Text('Пройти тест снова!'));
  }
}
