import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailPasswordForm extends StatefulWidget {
  const EmailPasswordForm({
    @required this.onValidationPassed,
    @required this.onValidationFailed,
    this.submitButtonLabel = 'Sign In',
  });
  final Function(String, String) onValidationPassed;
  final Function(String, String) onValidationFailed;
  final String submitButtonLabel;

  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<EmailPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wp = MediaQuery.of(context).size.width;
    final hp = MediaQuery.of(context).size.height;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              vertical: hp * 0.01,
              horizontal: wp * 0.05,
            ),
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline),
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
              validator: _validateEmail,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: hp * 0.01,
              horizontal: wp * 0.05,
            ),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Center(
            child: Container(
              width: wp * 0.8,
              margin: EdgeInsets.symmetric(vertical: hp * 0.01),
              child: RaisedButton(
                child: Text(widget.submitButtonLabel),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    widget.onValidationPassed(
                        emailController.text, passwordController.text);
                  } else {
                    widget.onValidationFailed(
                        emailController.text, passwordController.text);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Email validator
  String _validateEmail(String email) {
    return EmailValidator.validate(email) ? null : 'Invalid address';
  }
}
