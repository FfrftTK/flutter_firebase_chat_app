import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class EDBUser with _$EDBUser {
  factory EDBUser({
    @required String id,
    String name,
    @required String email,
  }) = _EDBUser;

  factory EDBUser.fromJson(Map<String, dynamic> json) =>
      _$EDBUserFromJson(json);
}
