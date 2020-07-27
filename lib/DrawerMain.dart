import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(title: Text("App drawer"),),
        body: Container(
          child: Text(" drawer show"),
        ),
    ),
    );
  }
}