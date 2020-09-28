import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class EDBMessage with _$EDBMessage {
  factory EDBMessage({
    @required String posterId,
    @required String message,
  }) = _EDBMessage;

  factory EDBMessage.fromJson(Map<String, dynamic> json) =>
      _$EDBMessageFromJson(json);
}
