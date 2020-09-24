import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_home.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    User currentUser,
  }) = _HomeState;
}
