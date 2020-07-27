import 'package:flutter/cupertino.dart';

class IOSAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Text("This is iOS alert !"),
      title: Text("iOS Alert !"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("Ok"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
