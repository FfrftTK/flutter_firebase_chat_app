import 'package:chat_app/states/states.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'index.dart';

class PageSignIn extends StatelessWidget {
  const PageSignIn();
  static const routeName = '/sign-in';
  @override
  Widget build(BuildContext context) {
    final userStateController =
        Provider.of<UserStateController>(context, listen: false);
    final hp = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: hp * 0.05),
              child: EmailPasswordForm(
                onValidationPassed: (email, password) {
                  userStateController.signIn(
                    email: email,
                    password: password,
                  );
                },
                onValidationFailed: (_, __) {},
                submitButtonLabel: 'Sign In',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: hp * 0.3),
              child: RaisedButton(
                onPressed: () {
                  Get.toNamed(PageSignUp.routeName);
                },
                child: const Text('Create new account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
