import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Simple Text form with no validation
class SimplePostDialogForm extends StatefulWidget {
  const SimplePostDialogForm({
    @required this.onValidationPassed,
    @required this.onValidationFailed,
    this.titleText = '',
    this.contentText = '',
    this.hintText,
    this.submitText = 'Post',
    this.maxLength,
    this.validator,
  });
  final Function(String) onValidationPassed;
  final Function(String) onValidationFailed;
  final String titleText;
  final String contentText;
  final String hintText;
  final String submitText;
  final int maxLength;
  final String Function(String) validator;

  @override
  State<StatefulWidget> createState() => SimplePostDialogFormState();
}

class SimplePostDialogFormState extends State<SimplePostDialogForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: widget.titleText == null ? null : Text(widget.titleText),
      content: Material(
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Text(
              widget.contentText,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  decoration: InputDecoration(hintText: widget.hintText),
                  controller: textController,
                  validator: widget.validator ?? () => null,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text(widget.submitText),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              widget.onValidationPassed(textController.text);
            }
            widget.onValidationFailed(textController.text);
          },
        ),
      ],
    );
  }
}
