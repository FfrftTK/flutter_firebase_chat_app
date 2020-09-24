import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_user.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    User currentUser,
  }) = _UserState;
}
