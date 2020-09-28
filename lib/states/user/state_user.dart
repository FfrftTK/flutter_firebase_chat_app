import 'package:chat_app/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_user.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    EAppUser currentUser,
  }) = _UserState;
}
