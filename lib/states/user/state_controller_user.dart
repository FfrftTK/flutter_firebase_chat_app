import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/repositories/repositories.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_notifier/state_notifier.dart';

import 'state_user.dart';

export 'state_user.dart';

class UserStateController<T extends AuthenticationRepository,
        U extends UserRepository> extends StateNotifier<UserState>
    with LocatorMixin {
  UserStateController() : super(const UserState()) {}
  T get authRepository => read();
  U get userRepository => read();
  ReusableDialogs get reusableDialog => read();

  @override
  void initState() {
    userRepository.fetchCurrentUser().then((value) {
      state = state.copyWith(currentUser: value);
    });
  }

  /// Authentication related
  Future<void> signIn({
    @required String email,
    @required String password,
  }) async {
    try {
      await authRepository.signIn(
        email: email,
        password: password,
      );

      // Update current user
      state =
          state.copyWith(currentUser: await userRepository.fetchCurrentUser());
    } on Exception {
      reusableDialog.showSimpleNotificationDialog(
        contentText: 'Failed to sign in',
        submitText: 'OK',
      );
    }
  }

  Future<void> signOut() async {
    await authRepository.signOut();
    // Update current user
    state = state.copyWith(currentUser: null);
  }

  Future<void> createUser({
    @required String email,
    @required String password,
  }) async {
    try {
      await authRepository.createUser(
        email: email,
        password: password,
      );

      // Update current user with sign in
      await signIn(email: email, password: password);

      // Add current user data to DB
      await userRepository.addUserData(state.currentUser);

      // Pop until root
      Get.until((route) => Get.currentRoute == PageRoot.routeName);
    } on Exception {
      reusableDialog.showSimpleNotificationDialog(
        contentText: 'Failed to create account',
        submitText: 'OK',
      );
    }
  }
}
