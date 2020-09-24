import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

import 'state_user.dart';

export 'state_user.dart';

class UserStateController extends StateNotifier<UserState> with LocatorMixin {
  UserStateController() : super(const UserState()) {}

  /// authentication related
  Future<void> signIn({
    @required BuildContext context,
    @required String email,
    @required String password,
  }) async {
    try {
      final authClient = read<FirebaseAuthClient>();
      await authClient.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // update current user
      state = state.copyWith(currentUser: authClient.currentUser);
    } on Exception {
      read<ReusableDialogs>().showSimpleNotificationDialog(
        context,
        contentText: 'Failed to sign in',
        submitText: 'OK',
      );
    }
  }

  Future<void> signOut() async {
    final authClient = read<FirebaseAuthClient>();
    await authClient.signOut();
    // update current user
    state = state.copyWith(currentUser: authClient.currentUser);
  }

  Future<void> createUser({
    @required BuildContext context,
    @required String email,
    @required String password,
  }) async {
    try {
      final authClient = read<FirebaseAuthClient>();
      await authClient.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // update current user with sign in
      await signIn(context: context, email: email, password: password);

      // pop until root
      Navigator.popUntil(context, ModalRoute.withName(PageRoot.routeName));
    } on Exception {
      read<ReusableDialogs>().showSimpleNotificationDialog(
        context,
        contentText: 'Failed to create account',
        submitText: 'OK',
      );
    }
  }
}
