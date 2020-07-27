import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './AndriodAlert.dart';
import './iOSAlert.dart';

class CustomAlertDialog {
  final String alertTitle;
  final String alertContent;
  CustomAlertDialog({this.alertTitle, this.alertContent});
  void showAlert(BuildContext contex) {
    if (Platform.isIOS) {
     showCupertinoDialog(
      context: contex,
      builder: (ctx) => IOSAlert()
    );
    } else if (Platform.isAndroid){
    showDialog(
      context: contex,
      builder: (ctx) => AndroidAlert()
    );
    }
  }
}
