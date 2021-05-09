import 'package:flutter/cupertino.dart';

class Alert extends StatelessWidget {
  final void Function() _changeAlert;
  final scrollController = ScrollController();
  final actionScrollController = ScrollController();
  final String _height;
  Alert(this._changeAlert, this._height);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CupertinoAlertDialog(
      title: Text("Ваш рост состовляет $_height см."),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("Спасибо, не знал..."),
          onPressed: _changeAlert,
          isDefaultAction: true,
          isDestructiveAction: false,
        ),
        CupertinoDialogAction(
          child: Text("Это действительно интересный факт"),
          onPressed: _changeAlert,
          isDefaultAction: true,
          isDestructiveAction: false,
        ),
        CupertinoDialogAction(
          child: Text("Узнать больше..."),
          onPressed: _changeAlert,
          isDefaultAction: true,
          isDestructiveAction: true,
        ),
      ],
      scrollController: scrollController,
      actionScrollController: actionScrollController,
    ));
  }
}
