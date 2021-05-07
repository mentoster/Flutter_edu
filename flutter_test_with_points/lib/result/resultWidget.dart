import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int _points;
  final void Function() _retry;
  Result(this._points, this._retry);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ваши очки: ' + _points.toString(),
          style: TextStyle(fontSize: 28),
        ),
        ElevatedButton(
            onPressed: () {
              _retry();
            },
            child: Text('Пройти тест снова!')),
      ],
    );
  }
}
