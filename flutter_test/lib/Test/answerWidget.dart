import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() _selectHandler;
  final String _buttonText;
  Answer(this._buttonText, this._selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          ElevatedButton(onPressed: _selectHandler, child: Text(_buttonText)),
    );
  }
}
