import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/states/states.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageRoot extends StatelessWidget {
  const PageRoot();
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    final currentUser =
        context.select<UserState, EAppUser>((state) => state.currentUser);
    if (currentUser == null) {
      return const PageSignIn();
    } else {
      return const PageHome();
    }
  }
}
