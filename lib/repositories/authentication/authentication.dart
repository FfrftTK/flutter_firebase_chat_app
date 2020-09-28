import 'package:flutter/material.dart';

abstract class AuthenticationRepository {
  AuthenticationRepository() {}

  /// authentication related
  Future<void> signIn({
    @required String email,
    @required String password,
  });

  Future<void> signOut();

  Future<void> createUser({
    @required String email,
    @required String password,
  });
}
