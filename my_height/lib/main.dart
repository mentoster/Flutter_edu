import 'package:my_height/alert.dart';
import 'package:my_height/input.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Какой твой рост?';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isAlert = false;
  String _height = 'Вы не ввели рост!';
  void _shangeAlert() {
    print("Changed");
    setState(() {
      _isAlert = !_isAlert;
    });
    print("");
  }

  void _setText(String height) {
    this._height = height;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Uncomment to change the background color

      navigationBar: const CupertinoNavigationBar(
        middle: Text('Узнай свой рост!'),
      ),
      child: Center(
        child: _isAlert
            ? Alert(_shangeAlert, _height)
            : Container(
                margin: EdgeInsets.all(50),
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Введите свой рост!"),
                    Container(width: 160, child: MyPrefilledText(_setText)),
                    CupertinoButton(
                      child: Text("Узнать интересный факт о своем росте"),
                      onPressed: () => _shangeAlert(),
                      color: CupertinoColors.activeBlue,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
