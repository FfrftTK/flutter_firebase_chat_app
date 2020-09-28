import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp.freezed.dart';
part 'timestamp.g.dart';

@freezed
abstract class EDBTimestamp with _$EDBTimestamp {
  factory EDBTimestamp({
    DateTime createdAt,
    DateTime updatedAt,
    DateTime deletedAt,
  }) = _EDBTimestamp;

  factory EDBTimestamp.fromJson(Map<String, dynamic> json) =>
      _$EDBTimestampFromJson(json);

  factory EDBTimestamp.createNow() {
    final now = DateTime.now();
    return EDBTimestamp(
      createdAt: now,
      updatedAt: now,
    );
  }

  factory EDBTimestamp.updateNow() {
    final now = DateTime.now();
    return EDBTimestamp(
      updatedAt: now,
    );
  }

  factory EDBTimestamp.deleteNow() {
    final now = DateTime.now();
    return EDBTimestamp(
      updatedAt: now,
      deletedAt: now,
    );
  }
}
