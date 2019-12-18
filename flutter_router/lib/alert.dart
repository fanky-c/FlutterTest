import 'package:flutter/material.dart';



  // 定义对话框
  show(BuildContext context, msg) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                print("删除");
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("取消"),
              onPressed: () {
                print("取消");
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }