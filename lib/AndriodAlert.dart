import 'package:flutter/material.dart';
class AndroidAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(content:Text("This is the alert view") ,title: Text("Alert"),
    actions: <Widget>[
      FlatButton(onPressed: (){
      }, child: Text("Ok")),
      FlatButton(onPressed: (){
      }, child: Text("Dismiss")),
    ],
    );

  }
}