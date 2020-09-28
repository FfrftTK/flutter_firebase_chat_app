import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableDialogs {
  const ReusableDialogs();
  // Simple notification dialog
  // The controllable contents are only title, content & submit Texts.
  Future<void> showSimpleNotificationDialog({
    String titleText,
    String contentText,
    String submitText = '',
  }) {
    return Get.dialog(
      Builder(builder: (_context) {
        return CupertinoAlertDialog(
          title: titleText == null ? null : Text(titleText),
          content: Text(
            contentText,
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(submitText),
              onPressed: () => Navigator.pop(_context),
            ),
          ],
        );
      }),
    );
  }

  // Simple dialog with two options
  Future<void> showTwoOptionDialog({
    String titleText,
    String contentText,
    String submitText1 = '',
    String submitText2 = '',
    @required Function() submitFunc1,
    @required Function() submitFunc2,
  }) {
    return Get.dialog(
      Builder(
        builder: (_context) => CupertinoAlertDialog(
          title: titleText == null ? null : Text(titleText),
          content: Text(
            contentText,
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(submitText1),
              onPressed: () {
                submitFunc1();
                Navigator.pop(_context);
              },
            ),
            CupertinoDialogAction(
              child: Text(submitText2),
              onPressed: () {
                submitFunc2();
                Navigator.pop(_context);
              },
            )
          ],
        ),
      ),
    );
  }
}
