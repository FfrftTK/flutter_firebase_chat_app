import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePostForm extends StatefulWidget {
  const MessagePostForm({
    @required this.onValidationPassed,
    @required this.onValidationFailed,
    @required this.validator,
    this.submitButtonLabel = 'Send',
  });
  final Function(String) onValidationPassed;
  final Function(String) onValidationFailed;
  final Function(String) validator;
  final String submitButtonLabel;

  @override
  State<StatefulWidget> createState() => MessageFormState();
}

class MessageFormState extends State<MessagePostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        padding: EdgeInsets.all(Get.width * 0.03),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 27,
              child: TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Get.width * 0.5),
                  ),
                ),
                validator: widget.validator,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 6,
              child: RawMaterialButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    widget.onValidationPassed(messageController.text);
                  } else {
                    widget.onValidationFailed(messageController.text);
                  }
                },
                elevation: 0,
                fillColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(15),
                shape: const CircleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
