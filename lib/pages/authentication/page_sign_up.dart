import 'package:chat_app/states/user/state_controller_user.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class PageSignUp extends StatelessWidget {
  const PageSignUp();
  static const routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    final userStateController =
        Provider.of<UserStateController>(context, listen: false);
    final hp = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: hp * 0.05),
            child: EmailPasswordForm(
              onValidationPassed: (email, password) {
                userStateController.createUser(
                  email: email,
                  password: password,
                );
              },
              onValidationFailed: (_, __) {},
              submitButtonLabel: 'Sign Up',
            ),
          ),
        ],
      ),
    );
  }
}
