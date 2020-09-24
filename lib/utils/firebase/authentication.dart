import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class FirebaseAuthClient {
  factory FirebaseAuthClient(FirebaseAuth authInstance) {
    return _instance ?? FirebaseAuthClient._internal(authInstance);
  }
  // Singleton
  FirebaseAuthClient._internal(this.authInstance);
  static FirebaseAuthClient _instance;
  final FirebaseAuth authInstance;

  Future<UserCredential> createUserWithEmailAndPassword({
    @required String email,
    @required String password,
  }) {
    return authInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) {
    return authInstance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    return authInstance.signOut();
  }

  User get currentUser => authInstance.currentUser;
}
