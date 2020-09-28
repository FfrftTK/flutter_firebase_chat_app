import 'package:chat_app/repositories/authentication/authentication.dart';
import 'package:chat_app/utils/firebase/authentication.dart';
import 'package:flutter/material.dart';

class AuthenticationRepositoryWithFirebase extends AuthenticationRepository {
  AuthenticationRepositoryWithFirebase(this.client) : super();

  final FirebaseAuthClient client;

  /// authentication related
  @override
  Future<void> signIn({
    @required String email,
    @required String password,
  }) {
    return client.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() {
    return client.signOut();
  }

  @override
  Future<void> createUser({
    @required String email,
    @required String password,
  }) {
    return client.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
