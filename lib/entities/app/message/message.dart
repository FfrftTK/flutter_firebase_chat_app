import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class EAppMessage with _$EAppMessage {
  factory EAppMessage({
    @required String posterId,
    @required String message,
    @required DateTime postedAt,
  }) = _EAppMessage;

  factory EAppMessage.fromJson(Map<String, dynamic> json) =>
      _$EAppMessageFromJson(json);
}
