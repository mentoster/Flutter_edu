import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class MyPrefilledText extends StatefulWidget {
  final Function _setHeight;
  MyPrefilledText(this._setHeight);
  @override
  _MyPrefilledTextState createState() => _MyPrefilledTextState(_setHeight);
}

class _MyPrefilledTextState extends State<MyPrefilledText> {
  late TextEditingController _textController;
  final Function _setHeight;
  _MyPrefilledTextState(this._setHeight);
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
        onChanged: (String inText) {
          print("27. input -> inText : $inText");
          _setHeight(inText);
        },
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
          TextInputFormatter.withFunction((oldValue, newValue) {
            try {
              final text = newValue.text;
              if (text.isNotEmpty) double.parse(text);
              return newValue;
            } catch (e) {}
            return oldValue;
          }),
        ],
        controller: _textController);
  }
}
