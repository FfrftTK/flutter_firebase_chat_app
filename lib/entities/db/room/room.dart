import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
abstract class EDBRoom with _$EDBRoom {
  factory EDBRoom({
    @required String name,
    @required List<String> members,
  }) = _EDBRoom;

  factory EDBRoom.fromJson(Map<String, dynamic> json) =>
      _$EDBRoomFromJson(json);
}
