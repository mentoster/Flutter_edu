import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final void Function() _retry;
  Result(this._retry);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ваши очки: 5',
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
