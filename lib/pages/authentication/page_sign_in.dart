import 'package:chat_app/states/states.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'index.dart';

class PageSignIn extends StatelessWidget {
  static const routeName = '/sign-in';
  @override
  Widget build(BuildContext context) {
    final userStateController =
        Provider.of<UserStateController>(context, listen: false);
    final router = Provider.of<Router>(context, listen: false);
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
                onSuccess: (email, password) {
                  userStateController.signIn(
                    context: context,
                    email: email,
                    password: password,
//                    email: 'axdmzr@0-ml.com',
//                    password: '111111',
                  );
                },
                onFailed: (_, __) {},
                submitButtonLabel: 'Sign In',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: hp * 0.3),
              child: RaisedButton(
                onPressed: () {
                  router.navigateTo(
                    context,
                    PageSignUp.routeName,
                    transition: TransitionType.fadeIn,
                  );
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
