import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableDialogs {
  const ReusableDialogs();
  // Simple notification dialog
  // The controllable contents are only title, content & submit Texts.
  Future<void> showSimpleNotificationDialog(
    BuildContext context, {
    String titleText,
    String contentText,
    String submitText = '',
  }) {
    return showDialog(
      context: context,
      builder: (_context) {
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
      },
    );
  }
}
