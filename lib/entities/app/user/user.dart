import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class EAppUser with _$EAppUser {
  factory EAppUser({
    @required String id,
    String name,
    @required String email,
  }) = _EAppUser;

  factory EAppUser.fromJson(Map<String, dynamic> json) =>
      _$EAppUserFromJson(json);
}
