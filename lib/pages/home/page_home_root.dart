import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/states/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageRoot extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    final currentUser =
        context.select<UserState, User>((state) => state.currentUser);
    if (currentUser == null) {
      return PageSignIn();
    } else {
      return PageHome();
    }
  }
}
