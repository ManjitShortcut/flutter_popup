import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheet {
  CupertinoActionSheet showActionSheet(BuildContext ctx) {
    return CupertinoActionSheet(
      title: Text(
        "Action Sheet",
        style: TextStyle(fontSize: 30),
      ),
      message: Text(
        "Select any section",
        style: TextStyle(fontSize: 15.0),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          onPressed: () {
            print(" action 1 click");
          },
          child: Text("Action 1"),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            print(" action 2 click");
          },
          child: Text("Action 2"),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            print(" action 3 click");
          },
          child: Text("Action 3"),
          isDefaultAction: true,
        ),
        
      ],
     cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            print(" Cancel click");
            Navigator.pop(ctx);
          },
          child: Text("Cancel"),
          isDestructiveAction: true,
        ),

    );
  }
}
